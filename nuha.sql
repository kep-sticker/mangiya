-- phpMyAdmin SQL Dump
-- version 3.1.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 18, 2017 at 05:27 PM
-- Server version: 5.1.35
-- PHP Version: 5.2.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nuha`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminmenu`
--

CREATE TABLE IF NOT EXISTS `adminmenu` (
  `idadminmenu` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(35) DEFAULT NULL,
  `icon` varchar(100) NOT NULL,
  `link` varchar(35) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `ord` int(11) DEFAULT NULL,
  PRIMARY KEY (`idadminmenu`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `adminmenu`
--

INSERT INTO `adminmenu` (`idadminmenu`, `menu`, `icon`, `link`, `parent`, `ord`) VALUES
(1, 'Artikel', 'fa fa-book', 'berita', 0, 1),
(2, 'User', 'fa fa-users', 'users', 0, 3),
(3, 'Setting', 'fa fa-gears', 'setting', 0, 9),
(4, 'Halaman Statis', 'fa fa-info-circle', 'pages', 0, 2),
(5, 'Slider', 'fa fa-lightbulb-o', 'slider', 0, 4),
(6, 'Galeri', 'fa fa-camera', 'galeri', 0, 5),
(7, 'Pusat Download', 'fa fa-cloud-download', 'pusat-download', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE IF NOT EXISTS `berita` (
  `idberita` int(11) NOT NULL AUTO_INCREMENT,
  `idkategori` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `image` varchar(250) NOT NULL DEFAULT '',
  `postdate` date DEFAULT NULL,
  `author` varchar(35) DEFAULT NULL,
  `view` int(11) NOT NULL,
  `utama` varchar(11) NOT NULL,
  PRIMARY KEY (`idberita`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=109 ;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`idberita`, `idkategori`, `title`, `content`, `image`, `postdate`, `author`, `view`, `utama`) VALUES
(88, 0, 'Tuan Guru Hasanain Juaini, Bung Karno dari Timur', '<p>Bila kita mengunjungi Lombok, Nusa Tenggara Barat (NTB) pada tahun 2010, di sekitar Bandara Internasional Lombok (BIL) &nbsp;yang waktu itu baru dibuka, dan di sepanjang jalan dari bandara hingga menjelang kota Mataram, terlihat begitu gersang dan hampa karena minimnya jumlah pepohonan. Tidak terlihat sama sekali Lombok sebagai salah satu lumbung padi nasional.</p>\r\n<p>Kini kondisinya sangat berbeda. &nbsp;BIL tak lagi terkesan gersang, dan ribuan pohon juga sudah terlihat membesar di sepanjang jalan menuju kota Mataram yang berjarak sekitar 40 km.</p>\r\n<p>Perkembangan penghijauan yang begitu cepat dan massif tersebut &nbsp;membuat banyak orang penasaran, karena pekerjaan besar ini tentu tak hanya membutuhkan &nbsp;biaya yang tidak sedikit, akan tetapi juga komitmen lingkungan hidup yang kuat.</p>\r\n<p>Penanaman bibit pohon di Bandara International Lombok (BIL) pada tahun 2010 oleh santri dan pengajar Pondok Pesantren Nurul Harramain. Foto : Ponpes Nurul Harramain</p>\r\n<p>Ternyata jawabannya bisa ditemukan di sebuah tempat di Lombok Barat, tepatnya di Desa Leubak, sebuah desa yang dekat dengan Pura Narmada. &nbsp;Dia adalah Tuan Guru (TG) Hasanain Juaini. &nbsp; Istilah ?tuan guru? yang berkembang di kalangan masyarakat Sasak adalah sebutan bagi seorang tokoh agama Islam yang dipandang menguasai berbagai ajaran agama dalam segala aspeknya. Dan sebutan yang disematkan padanya bukan tanpa alasan.</p>\r\n<p>TG Hasanain adalah pendiri dan pengasuh Pondok Pesantren Nurul Haramain di Desa Lembuak, Lombok Barat, NTB yang beliau dirikan sejak 18 tahun lalu. Di pesantren yang mengasuh 2500 santri inilah motivasi dan energi besarnya muncul untuk menjadikan pesantrennya sebagai aktor penggerak dalam upaya penghijauan kembali Pulau Lombok. Tiap tahun mereka menanam sekitar tiga juta pohon. Kini namanya harum berkat kegigihannya menghijaukan Pulau Lombok, dan membagikan jutaan bibit pohon secara gratis.</p>\r\n<p>Sejak 9 tahun terakhir, Hasanain beserta ribuan santrinya dan didukung oleh masyarakat berhasil menghijaukan kembali 56 hektar lahan gundul di Pulau Lombok dan Sumbawa, termasuk 36 hektar lahan gundul dan gersang yang dia beli pada 2003 yang dia sulap menjadi kawasan konservasi hutan yang dinamai Desa Madani.</p>\r\n<p>Selain itu, di pesantrennya dikembangkan pembibitan pohon dengan jumlah yang fantastis setiap tahunnya, yakni sekitar 1 juta hingga 1,5 juta bibit pohon yang semuanya dikerjakan sendiri oleh para santrinya. Seluruh bibit pohon tersebut dibagikan secara gratis kepada siapapun yang ingin menanamnya.</p>\r\n<p>Bibit-bibit pohonnya sudah tertanam di berbagai pulau di Indonesia, bahkan hingga Thailand, Malaysia, China dan India. &nbsp;Bibit pohon jenis jati, &nbsp;mahoni, albasia, trembesi, &nbsp;ketapang, tanjung, mimba, gamelina, nangka, mangga, hingga pepaya, cabai, dan semangka, semua dibagikannya gratis kepada siapa saja. Secara periodik dia mengumumkan di media massa bahwa bibit-bibit pohonnya sudah tersedia, dan bisa diambil segera. Bahkan sekali waktu dia membawa ribuan bibit pohon ke tempat hajatan pernikahan dan meminta panitia membagikannya kepada para tamu undangan.</p>\r\n<p>Bagi Hasanain, menanam pohon adalah salah satu kewajiban dan tanggung jawab manusia. Apalagi kearifan terhadap lingkungan sudah diatur dalam Quran. Kita sudah mendapatkan begitu banyak dari alam ini, maka kita harus tanya pada diri seberapa banyak yang kita berikan kepada alam, ungkapnya.</p>\r\n<p>Saat ini, dia berkeinginan untuk menanam ratusan ribu pohon asam di gurun pasir di Mekkah , seperti yang dilakukan Bung Karno yang menanam pohon seluas 225 hektar di padang Arafah (20 km dari pusat kota Mekkah). Baginya, kesadaran masyarakat untuk menanam pohon adalah salah satu rahmat terbesar.</p>\r\n<p>Saat bertemu dengan tim Mongabay, dia bercerita mengenai betapa sulit menyakinkan warga sekitar tentang nilai ekonomi jika mereka mau melakukan penghijauan. Pemahaman agama, juga kultur Suku Sasak, tidak cukup untuk membuat warga sekitar pesantren mengikuti sarannya. Saya terpaksa membawa kalkulator ke mana-mana, kenangnya.</p>\r\n<p>Pohon harus membawa manfaat ekonomi langsung bagi masyarakat sekitarnya. Memahamkan masyarakat tentang arti penting pohon takkan bisa diterima masyarakat jika tidak dibarengi ?iming-iming? keuntungan ekonomis. Dan tantangannya tak hanya di situ. Bagi warga, gagasannya dianggap tidak masuk akal karena tanah yang akan mereka garap umumnya berpasir, tanpa hara, dengan keberadaan sumber air yang juga langka.</p>\r\n<p>Kerja kerasnya meyakinkan masyarakat akhirnya membuahkan hasil. &nbsp;Masyarakat pun mulai tergerak membantunya menanam ratusan ribu pohon dengan bibit yang disediakan oleh pesantren yang diasuh oleh Hasanain.</p>\r\n<p>Boleh dicek di Google Earth, sebelum dan sesudah penanaman. Kini Lombok jauh lebih hijau katanya. Ia bosan dengan diskusi-diskusi, dengan teori-teori yang akhirnya berhenti di wacana saja. Selain berhasil membujuk masyarakat untuk aktif menanam pohon, pola keberhasilannya pun direplikasi oleh ratusan pesantren di NTB. Kini 500-an pesantren di Lombok dan Sumbawa telah terlibat langsung dalam gerakan pembibitan dan penanaman, dan puluhan pusat pembibitan pun telah tersebar di berbagai penjuru NTB.</p>\r\n<p>Sekarang warga yang mau menanam bahkan mengambil bibit sendiri ke pusat-pusat pembibitan. Dulu, bibit masih kami antar ke rumah mereka, dan mereka pun harus kami bayar agar mau menanam, kenang Hasanain sambil tertawa.</p>\r\n<p>Kuncinya di pendekatan. Orang jangan sampai dilarang menebang pohon, karena manusia hidup pada dasarnya kan butuh pohon, tuturnya. Menurutnya, orang boleh menebang pohon asalkan mau menanam lebih banyak daripada jumlah yang ditebangnya. Kalau menebang satu, ya tanam 100 lanjut Hasanain.</p>\r\n<p>Dia juga setuju hutan lindung tidak boleh diganggu. Kepada masyarakat perlu dijelaskan pohon mana yang boleh ditebang, mana yang tidak boleh. Sebagai contoh ia menyebut pohon asam. Pohon asam sulit untuk ditanam dan membutuhkan waktu lama untuk tumbuh. Saya ingin agar mereka mencintai pohon asam, agar mereka tidak menebangnya. Selama ini pohon asam banyak ditebangi untuk membakar tembakau, katanya.</p>\r\n<p>Masyarakat kini mulai memanen pohon di lahan dan pekarangannya sendiri, sehingga hutan menjadi aman dari perambahan. Mahoni, jati, jati putih, sengon, ketapang, kenari, dan berbagai tanaman kayu kini pun banyak tumbuh di lahan-lahan warga yang dulunya lahan kosong dan gersang. Puluhan sumber air yang dulu punah kini juga bermunculan lagi, dan beberapa mata air debitnya membesar. Sistem tumpang sari yang dikembangkan kemudian juga memungkinkan masyarakat mendapat hasil dari tanaman-tanaman jangka pendek, bahkan mereka bisa berternak.</p>\r\n<p>Meski upayanya sudah berhasil dan mendapat dukungan luas, Hasanain masih terus menanam pohon. Ia masih terlihat mencangkul bersama para santrinya hingga tengah malam. Kami menanam pohon setiap hari. Tiada hari tanpa menanam. Kalau belum selesai akan terus kami lanjutkan, walau sampai malam hari, katanya.</p>\r\n<p>Bagi Hasanain, manusia diciptakan dengan memegang dua amanah &nbsp;yakni &nbsp;memelihara dan melestarikan alam, dan eribadah di atasnya. &nbsp;Dua-duanya harus berjalan, tidak bisa salah satu.</p>\r\n<p>Tuan Guru (TG) Hasanain Juaini, pendiri Pondok Pesantren Nurul Haramain, Desa Lembuak, Lombok Barat, NTB. Foto : Jay Fajar</p>\r\n<p>Hasanain juga sudah menghitung, &nbsp;selama hidup, seorang manusia membutuhkan 172 pohon untuk mendukung hidupnya, yang digunakan seperti untuk membuat tempat tidur, lemari, meja, dan sebagainya. Oleh karena itu, setiap orang selayaknya bertanggungjawab menanam setidaknya 172 pohon selama hidupnya.</p>\r\n<p>Filosofi yang diikuti kerja kerasnya ternyata &nbsp;direkam dan diakui oleh Ramon Magsaysay Foundation, yang kemudian menganugerahinya Ramon Magsasay Award tahun 2011, sebuah penghargaan prestisius &nbsp;yang disebut-sebut sebagai Nobel-nya Asia. &nbsp;Kini namanya sejajar dengan tokoh-tokoh seperti Abdurrahman Wahid, Mochtar Lubis, atau Pramoedya Ananta Toer, yang juga pernah meraih penghargaan Ramon Magsaysay. &nbsp;Semuanya adalah tokoh-tokoh yang membawa ide dan inspirasi besar bagi masyarakat luas. &nbsp;Dan selayaknya, kita juga meniru apa yang telah mereka lakukan.</p>', '83Lighthouse.jpg', '2016-05-10', 'Administrator', 4, '0'),
(106, 0, 'NHSCC', '<p>ada yang baru.</p>', '', '2017-03-09', 'Administrator', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `berita_comment`
--

CREATE TABLE IF NOT EXISTS `berita_comment` (
  `idkomentar` int(11) NOT NULL AUTO_INCREMENT,
  `idberita` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `content` text,
  `postdate` datetime DEFAULT NULL,
  `status` varchar(1) DEFAULT 'T',
  PRIMARY KEY (`idkomentar`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `berita_comment`
--

INSERT INTO `berita_comment` (`idkomentar`, `idberita`, `name`, `email`, `content`, `postdate`, `status`) VALUES
(3, 95, 'Hamba Allah', 'ari@gii.co.id', 'jaya terus, dan terus berkarya', '2016-05-12 13:46:37', 'T'),
(18, 95, 'Okto Prima Jaya', 'culis@gi.co.id', 'alert(document.cookie);', '2016-05-12 17:12:37', 'T'),
(19, 95, 'Okto Prima Jaya', 'octo.utd@facebook.com', 'alert(document.cookie);', '2016-05-12 17:13:16', 'T'),
(20, 95, 'Silvia andika', 'culis@gi.co.id', 'TAI', '2016-05-12 17:13:37', 'T'),
(21, 95, 'bunglon', 'ary2sasaka@yahoo.com', 'sdad', '2016-05-12 17:13:52', 'T'),
(22, 103, 'Admin', 'asasd@saf.com', 'asffafsf', '2016-05-14 12:30:43', 'T'),
(23, 103, 'Admin', 'asasd@saf.com', 'asffafsf', '2016-05-14 12:30:46', 'T'),
(24, 103, 'Admin', 'asasd@saf.com', 'asffafsf', '2016-05-14 12:30:47', 'T'),
(25, 103, 'Admin', 'asasd@saf.com', 'asffafsf', '2016-05-14 12:30:48', 'T'),
(26, 103, 'Admin', 'asasd@saf.com', 'asffafsf', '2016-05-14 12:30:48', 'T'),
(27, 103, 'Admin', 'asasd@saf.com', 'asffafsf', '2016-05-14 12:30:51', 'T'),
(28, 103, 'Admin', 'asasd@saf.com', 'asffafsf', '2016-05-14 12:30:51', 'T'),
(29, 103, 'Admin', 'asasd@saf.com', 'asffafsf', '2016-05-14 12:30:51', 'T'),
(30, 103, 'Admin', 'asasd@saf.com', 'asffafsf', '2016-05-14 12:30:52', 'T');

-- --------------------------------------------------------

--
-- Table structure for table `bukutamu`
--

CREATE TABLE IF NOT EXISTS `bukutamu` (
  `idbukutamu` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(35) DEFAULT '',
  `email` varchar(50) DEFAULT '',
  `instansi` varchar(35) DEFAULT '',
  `pesan` text,
  `komentar` text,
  `ip` varchar(20) DEFAULT '',
  `postdate` datetime DEFAULT NULL,
  `publish` varchar(1) DEFAULT 'F',
  PRIMARY KEY (`idbukutamu`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bukutamu`
--

INSERT INTO `bukutamu` (`idbukutamu`, `nama`, `email`, `instansi`, `pesan`, `komentar`, `ip`, `postdate`, `publish`) VALUES
(1, 'oktoprima', 'oktoprima@icloud.com', 'Global Intermedia', 'Selamat Malam. Puji Tuhan, Satuan polisi pamong praja provinsi papua Sudah Di Launching, Semoga Dengan hadirnya website ini, dapat membantu penyebaran informasi mengenai hukum di Papua. Terima Kasih, Salam ', 'Iya sama sama mas oktoprima :)', '127.0.0.1', '2015-09-22 01:58:44', 'T');

-- --------------------------------------------------------

--
-- Table structure for table `conf`
--

CREATE TABLE IF NOT EXISTS `conf` (
  `idconf` int(11) NOT NULL AUTO_INCREMENT,
  `conf` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `val` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idconf`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `conf`
--

INSERT INTO `conf` (`idconf`, `conf`, `val`) VALUES
(1, 'SITE_TITLE', 'Nurul Haramain Toward Qualified Moslems Generations'),
(2, 'CONTACT_ADDR', '-'),
(12, 'TWEET_ACC', 'https://www.twitter.com/'),
(3, 'CONTACT_TELP', '-'),
(4, 'CONTACT_FAX', '-'),
(5, 'CONTACT_EMAIL', 'info@nurulharamainnw.com'),
(8, 'SITE_DESC', 'Nurul Haramain Toward Qualified Moslems Generations'),
(9, 'SITE_KEY', 'Nurul Haramain Toward Qualified Moslems Generations'),
(13, 'GOOGLE_ACC', '-'),
(11, 'HOTLINE', '-'),
(14, 'FB_ACC', 'https://www.facebook.com/'),
(15, 'CONTACT_WEB', 'http://www.nurulharamainnw.com/');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE IF NOT EXISTS `galeri` (
  `idgaleri` int(11) NOT NULL AUTO_INCREMENT,
  `jenis` int(1) DEFAULT NULL COMMENT '1 = Foto, 2 = Video',
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `postdate` date DEFAULT NULL,
  `url` text,
  `image` varchar(255) DEFAULT NULL,
  `idupdater` int(11) DEFAULT NULL,
  PRIMARY KEY (`idgaleri`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`idgaleri`, `jenis`, `title`, `content`, `postdate`, `url`, `image`, `idupdater`) VALUES
(4, 1, 'Lab', 'Lab', '2016-05-10', '', 'IMG_6863.JPG', 1),
(5, 1, 'Marhalah', 'Marhalah', '2016-05-10', '', 'IMG_9811.JPG', 1),
(6, 1, 'Belajar', 'Belajar', '2016-05-10', '', 'X11-KYP-KOLEJ-YAYASAN-PAHANG-KUANTAN-COLLEGE-STUDENT-DIPLOMA-STUDENT.JPG.PAGESPEED.IC.VQ-VGDHQCY.JPG', 1),
(7, 1, 'Ngaji', 'ngaji', '2016-05-10', '', 'MAKING-UP-MUSLIM-BOYS.JPG', 1),
(8, 2, 'Avenged Sevenfold', 'Video Clip tes', '2016-05-12', 'https://www.youtube.com/watch?v=A7ry4cx6HfY', '', 1),
(9, 1, 'tesa', 'boooo', '2016-05-12', '', 'IRAQI_STUDENTS_RECEIVE_SCHOOL_SUPPLIES_061031-F-9085B-140.JPG', 1),
(11, 1, 'Halo', 'Tes Galery', '2016-05-12', '', '55baju black wedus copy.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE IF NOT EXISTS `group` (
  `idgroup` int(11) NOT NULL AUTO_INCREMENT,
  `group` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`idgroup`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`idgroup`, `group`) VALUES
(1, 'ADMINISTRATOR'),
(2, 'OPERATOR WEBSITE');

-- --------------------------------------------------------

--
-- Table structure for table `hakakses`
--

CREATE TABLE IF NOT EXISTS `hakakses` (
  `idakses` int(11) NOT NULL AUTO_INCREMENT,
  `idadminmenu` int(11) DEFAULT NULL,
  `idgroup` int(11) DEFAULT NULL,
  PRIMARY KEY (`idakses`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `hakakses`
--

INSERT INTO `hakakses` (`idakses`, `idadminmenu`, `idgroup`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 1, 2),
(9, 4, 2),
(10, 5, 2),
(11, 6, 2),
(12, 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `idkategori` int(11) NOT NULL AUTO_INCREMENT,
  `urai` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idkategori`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`idkategori`, `urai`) VALUES
(1, 'Artikel'),
(2, 'Ekstra Santri'),
(3, 'Info Kesantrian'),
(4, 'Berita Umum'),
(5, 'Info Akademik');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `idmenu` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `url` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `published` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'Y',
  `parent` int(11) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  PRIMARY KEY (`idmenu`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=34 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`idmenu`, `menu`, `url`, `published`, `parent`, `ordering`) VALUES
(1, 'Beranda', 'index.htm', 'Y', 0, 1),
(2, 'Profil', '#', 'Y', 0, 2),
(3, 'Pendidikan', '#', 'Y', 0, 3),
(9, 'Struktur Yayasan', 'detail/pages/1/struktur-yayasan.htm', 'Y', 2, 2),
(4, 'Pendaftaran', '#', 'Y', 0, 4),
(5, 'Ekstra Kurikuler', '#', 'Y', 0, 5),
(6, 'Galeri', '#', 'Y', 0, 7),
(20, 'Download', 'list/pusat-download.htm', 'Y', 4, 9),
(30, 'Informasi Pendaftaran', 'detail/pages/22/informasi-pendaftaran.htm', 'Y', 4, 2),
(18, 'Jadwal Harian Santri', 'detail/pages/10/jadwal-harian-santri.htm', 'Y', 3, 5),
(17, 'Madani Super Camp', 'detail/pages/9/madani-super-camp.htm', 'Y', 3, 4),
(16, 'Pendidikan Non Formal', 'detail/pages/8/pendidikan-non-formal.htm', 'Y', 3, 3),
(15, 'Pendidikan Formal', 'detail/pages/7/pendidikan-formal.htm', 'Y', 3, 2),
(14, 'Kurikulum Pendidikan', 'detail/pages/6/kurikulum-pendidikan.htm', 'Y', 3, 1),
(13, 'Tujuan Pendidikan', 'detail/pages/5/tujuan-pendidikan.htm', 'Y', 2, 5),
(12, 'Visi dan Misi', 'detail/pages/4/visi-dan-misi.htm', 'Y', 2, 4),
(11, 'Sejarah Berdiri', 'detail/pages/3/sejarah-berdiri.htm', 'Y', 2, 3),
(10, 'Daftar Guru', 'detail/pages/2/daftar-guru.htm', 'Y', 2, 1),
(32, 'Kalender 2016', 'detail/pages/24/kalender-2016.htm', 'Y', 2, 6),
(21, 'Al Quran', 'detail/pages/13/al-quran.htm', 'Y', 5, 1),
(22, 'Bahasa', 'detail/pages/14/bahasa.htm', 'Y', 5, 2),
(23, 'Nasyid', 'detail/pages/15/nasyid.htm', 'Y', 5, 3),
(24, 'Komputer', 'detail/pages/16/komputer.htm', 'Y', 5, 4),
(25, 'Android', 'detail/pages/17/android.htm', 'Y', 5, 5),
(26, 'Menembak', 'detail/pages/18/menembak.htm', 'Y', 5, 6),
(27, 'Nisaiyyat', 'detail/pages/19/nisaiyyat.htm', 'Y', 5, 7),
(28, 'Foto', 'list/galeri-foto.htm', 'Y', 6, 1),
(29, 'Video', 'list/galeri-video.htm', 'Y', 6, 2),
(31, 'Biaya Pendidikan', 'detail/pages/23/biaya-pendidikan.htm', 'Y', 4, 3),
(33, 'Aritkel', 'list/artikel.htm', 'Y', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `idpage` int(11) NOT NULL AUTO_INCREMENT,
  `idmenu` int(11) DEFAULT NULL,
  `title` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `content` text COLLATE latin1_general_ci,
  `image` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `suka` int(11) NOT NULL,
  `bagi` int(11) NOT NULL,
  PRIMARY KEY (`idpage`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=51 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`idpage`, `idmenu`, `title`, `content`, `image`, `suka`, `bagi`) VALUES
(22, 30, 'Informasi Pendaftaran', '<p><b>Syarat-syarat pendaftaran</b></p><ol><li>Mengisi formulir pendaftaran</li><li>fotocopy ijazah SD/MI 3 lembar atau fotocopy raport terakhir</li><li>fotocopy ijazah smp/mts 3 lembar atau surat keterangan lulus yang asli</li><li>fotocopy akta kelahiran 3 lembar</li><li>fotocopy kartu keluarga 3 lembar</li><li>pasfoto ukuran 3 X 4 sebanyak 5 lembar</li><li>membayar uang pendaftaran</li></ol><p><span style=\\"line-height: 1.5\\"><b>Waktu dan tempat pendaftaran</b></span><br></p><p>pendaftaran di buka mulai tanggal 7 juni ? 14 juni 2016.</p><p>pendaftaran di buka mulai pukul 08:00 ? 17:00</p><p><span style=\\"line-height: 1.5\\"><b>Tempat Pendaftaran</b></span><br></p><p>Santri</p><p>Kantor KMI Nurul Haramain NW Putra Naramada</p><p>Jl. Tegal banyu, Lembuak, Narmada</p><p>Santriwati</p><p>Sekretariat Ponpes Nurul Haramain Putri NW Narmada</p><p>Jl. Hamzanwadi No. 05 Lembuak, Mekar Indah Narmada</p><p><span style=\\"line-height: 1.5\\"><b>Syarat-syarat Penerimaan</b></span></p><p>1. Mempunyai dasar agama yakni</p><p>a. Dapat mengerjakan ibadah sehari-hari dengan baik.</p><p>b. Dapat membaca al-quran dengan baik dan benar</p><p>2. Lulus Ujian masuk</p><p>3. Sanggup bertempat tinggal di asrama yang telah di tentukan</p><p>4. Sanggup melunasi iuran kepondokan selama satu semester apabila pindah di awal atau pertengahan semester</p><p>5. Bersedia menandatangani surat perjanjian.</p><p><b><span style=\\"line-height: 1.5\\">Ujian dan Materi</span></b></p><p>Akan diadakan tes ujian masuk dengan materi:</p><p>Bahasa Indonesia, Matematika, Psikotes dan Membaca Al-Qur?an</p><p>Pada Tanggal 15 s/d 16 Juni 2016, Penggumuman hasil tes tanggal 17 juni 2016</p><p>Semua pakaian dan perlengkapan harus dibawa pada saat pendaftaran ulang</p><p>Pendaftaran ulang dilaksanakan pada tanggal 21-22 juni 2016 untuk santri/wati baru, tanggal 23 Juni 2016 untuk santri/wati lama dan langsung tinggal di asrama</p><p><b>Pakaian dan Perlengkapan</b></p><p>Pakaian</p><p>Seragam Madrasah, Seragam Putih Biru(MTs.) dan Seragam Abu (MA)</p><p>Seragam Peramuka, Batik, Gamis( Putri), Pakaian Olahraga, Pakaian Sehari-hari</p><p>Perlengkapan</p><p>Perlengkapan Sekolah</p><p>Perlengkapan Tidur dan Mandi</p><p>Perlengkapan Makan</p><p>Lemari 3 rak satu pintu dengan ukuran panjang 55 cm x Lebar 41 cm, dan Tinggi 120 cm (dapat dibeli di pondok)</p>', 'BROSUE-2016.JPG', 12, 8),
(23, 31, 'Biaya Pendidikan', '<p>&nbsp</p>', 'BIAYA.JPG', 0, 0),
(24, 32, 'Kalender 2016', '<p>&nbsp</p>', '', 0, 0),
(14, 22, 'Bahasa', '<p>&nbsp</p>', '', 0, 0),
(15, 23, 'Nasyid', '<p>&nbsp</p>', '', 0, 0),
(16, 24, 'Komputer', '<p>&nbsp</p>', '', 0, 0),
(17, 25, 'Android', '<p>&nbsp;android</p>', '', 0, 0),
(18, 26, 'Menembak', '<p>&nbsp</p>', '', 0, 0),
(19, 27, 'Nisaiyyat', '<p>&nbsp</p>', '', 0, 0),
(20, 28, 'Foto', '<p>&nbsp</p>', '', 0, 0),
(21, 29, 'Video', '<p>&nbsp</p>', '', 0, 0),
(11, 19, 'Informasi Pendaftaran', '<p><b>Syarat-syarat pendaftaran</b></p><ol><li>Mengisi formulir pendaftaran</li><li>fotocopy ijazah SD/MI 3 lembar atau fotocopy raport terakhir</li><li>fotocopy ijazah smp/mts 3 lembar atau surat keterangan lulus yang asli</li><li>fotocopy akta kelahiran 3 lembar</li><li>fotocopy kartu keluarga 3 lembar</li><li>pasfoto ukuran 3×4 sebanyak 5 lembar</li><li>membayar uang pendaftaran</li><li>Waktu dan tempat pendaftaran</li></ol><p>pendaftaran di buka mulai tanggal 7 juni ? 14 juni 2016.</p><p>pendaftaran di buka mulai pukul 08:00 ? 17:00</p><p><b>Tempat Pendaftaran</b></p><p><span style=\\"line-height: 1.5\\">Santri</span><br></p><p>Kantor KMI Nurul Haramain NW Putra Naramada</p><p>Jl. Tegal banyu, Lembuak, Narmada</p><p>Santriwati</p><p>Sekretariat Ponpes Nurul Haramain Putri NW Narmada</p><p>Jl. Hamzanwadi No. 05 Lembuak, Mekar Indah Narmada</p><p><b>Syarat-syarat Penerimaan</b></p><p>1 Mempunyai dasar agama yakni</p><p>a. Dapat mengerjakan ibadah sehari-hari dengan baik.</p><p>b. Dapat membaca al-quran dengan baik dan benar</p><p>2. Lulus Ujian masuk</p><p>3. Sanggup bertempat tinggal di asrama yang telah di tentukan</p><p>4. Sanggup melunasi iuran kepondokan selama satu semester apabila pindah di awal atau pertengahan semester</p><p>5. Bersedia menandatangani surat perjanjian.</p><p><b>Ujian dan Materi</b></p><p>Akan diadakan tes ujian masuk dengan materi:</p><p>Bahasa Indonesia, Matematika, Psikotes dan Membaca Al-Qur?an</p><p>Pada Tanggal 15 s/d 16 Juni 2016, Penggumuman hasil tes tanggal 17 juni 2016</p><p>Semua pakaian dan perlengkapan harus dibawa pada saat pendaftaran ulang</p><p>Pendaftaran ulang dilaksanakan pada tanggal 21-22 juni 2016 untuk santri/wati baru, tanggal 23 Juni 2016 untuk santri/wati lama dan langsung tinggal di asrama</p><p><b>Pakaian dan Perlengkapan</b></p><p><b>Pakaian</b></p><ul><li>Seragam Madrasah, Seragam Putih Biru(MTs.) dan Seragam Abu (MA)</li><li>Seragam Peramuka, Batik, Gamis( Putri), Pakaian Olahraga, Pakaian Sehari-hari</li></ul><p><b>Perlengkapan</b></p><ul><li>Perlengkapan Sekolah</li><li>Perlengkapan Tidur dan Mandi</li><li>Perlengkapan Makan</li><li>Lemari 3 rak satu pintu dengan ukuran panjang 55 cm x Lebar 41 cm, dan Tinggi 120 cm (dapat dibeli di pondok)</li></ul>', 'BROSUE-2016.JPG', 0, 0),
(12, 20, 'Download Formulir Pendaftaran', '<p>&nbsp</p>', '', 0, 0),
(13, 21, 'Al Quran', '<p><br></p>', '', 0, 0),
(7, 15, 'Pendidikan Formal', '<p>&nbsp</p>', '', 0, 0),
(8, 16, 'Pendidikan Non Formal', '<p>&nbsp</p>', '', 0, 0),
(9, 17, 'Madani Super Camp', '<p>&nbsp</p>', 'GOOGLE.JPG', 0, 0),
(10, 18, 'Jadwal Harian Santri', '<p>&nbsp</p>', 'HARIAN.JPG', 0, 0),
(3, 11, 'Sejarah Berdiri', '<p>Keberadaan pondok pesantren Nurul Haramain, tidak bisa dipisahkan dengan sejarah perjalanan Pondok Pesantren Nahdlatul Wathan Narmada sebagai Induknya. Adalah pada tahun lima puluhan, masyrakat Narmada bermaksud mengadakan perubahan dalam kehidupan mereka, terutama dalam bidang kehidupan beragama. Ketika itu mereka memang sudah mengenal dan mengamalkan ajaran agama, akan tetapi masih banyak kekurangan dan kelemahan.</p><p>Apa yang mereka lakukan dan amalkan atas nama agama, ternyata banyak yang bukan merupakan ajaran agama. Tidak sedikit dari yang mereka yakini ataupun amalkan adalah paham leluhur dan animisme yang mereka anggap sebagai ajaran agama. sehingga, dalam kehidupan beragama mereka banyak melakukan penyimpangan dari ajaran agama yang benar, salah satu contoh dari penyimpangan mereka adalah ?watu telu? (shalat 3 waktu) Berangkat dari itu, masyarakat narmada dibawah pimpinan Lalu Alwi (Alm) yang waktu itu menjabat sebagai Camat Narmada bersepakat untuk memperbaiki keadaan dan mereka menyadari betapa penting serta berhajatnya masyarakat narmada akan adanya sebuah lembaga yang dapat dimanfaatkan untuk meluruskan pemahaman serta pengamalan agama mereka.</p><p>Akhirnya, merekapun mufakat dan dalam mufakat itu mereka sepakat bulat untuk mendirikan sebuah lembaga dengan Nama ?Djamaah Islam Narmada (DIN). setelah DIN terbentuk, timbul persoalan yakni masalah pengajar dan pendidik yang akan mengelola dan menjalankan DIN sesuai misinya. Merekapun musyawarah kembali dan mereka sepakat pula untuk meminta bantuan tenaga pendidik kepada Al Maghfuru lahu Bapak Maulana Syaikh TGKH. M. Zainuddin Abdul Majid, pendiri pondok Pesantren Darun Nahdlatain NW Pancor yang waktu itu masih bernama MNWDI dan terkenal dengan nama NWDI Pancor. Bapak Maulana yang waktu akrab dipanggil dengan Tuan Guru Pancor merespon dengan positif permintaan mereka dan beliaupun memenuhinya. Dengan mengirim dua orang guru muda, yaitu dua orang guru muda, Muhammad Ustadz Djuaini Mukhtar dan Al ustadz ma?ad bin H. Adnan asal Mamben Lotim. berbekal perintah dari guru besarnya kedua guru itupun berangkat meninggalkan pancor menuju narmada. dan untuk menjalankan misi DIN maka pada tanggal 18 Agustus 1951 keduanya membentuk lembaga pendidikan tingkat Ibtida?iyah dengan nama Nurul Huda Nahdlatul Wathan.</p><p>Kelahiran Nurul Huda disambut luas dan direspon positif oleh masyarakat sehingga murid yang masuk belajarpun cukup banyak dan bukan saja dari wilayah kecamatan narmada, akan tetapi juga datang dari Seganteng kecamatan Cakra Negara dan bahkan dari luar Kabupaten Lombok Barat seperti Sintung kecamatan perempuaninggarata mertak, paok dan tanak beak kecamatan batu keliang Loteng.</p><p>Seiring dengan perjalanan waktu dan sunah kehidupan yang selalu mengalami perubahan, maka sesudah berjalan bebearapa waktu dan beberapa kali menamatkan siswa, madrasah Nurul Huda pada tahun 1963 dirubah menjadi PGA NW 4 tahun (PGAP) dan pada tahun 1968 ditingkatkan menjadi PGA NW 6 tahun(PGAA) . Seperti halnya Nurul Huda kelahiran PGA NW pun disambut hangat masyarakat. sehingga siswa/siswinya cukup banyak dan terus berkembang mengalami peningkatan. Akan tetapi sesuai peraturan pemerintah yang membatasi jumlah PGA dan dilombok ini hanya boleh satu PGA yakni PGA Negeri mataram, maka pada tahun 1977 PGA NW Narmada diubah menjadi madrasah Tsanawiyah NW dan Aliyah NW.</p><p>Alhamdulillah, sampai saat ini MTs dan MA NW Narmada masih terus berjalan mengemban misinya dengan baik. dan karena keadaan dan kebutuhan perluasan lokasi akibat dari makin banyaknya siswa siswi dan tidak mungkin di satu komplek, maka dikembangkanlah MTs dan MA NW menjadi MTs dan MA NW Putera dan Putri. Kemudaian dengan maksud maningkatkan kualitas pendidikan di lingkungan MTs dan MA NW baik lahir dan bathin, maka pada tahun 1991 pengurus Yayasan Pondok Pesantren NW Narmada yang manjadi Payungnya membentuk lembaga husus pondok pesantren dengan nama Nurul Haramain.</p><p>Lembaga pondok ini bertanggung jawab menjalankan Pendidikan Formal dan non Formal dengan sistem Asrama dan sesuai dengan keadaan pula. Pondok Pesantren Nurul Haramain pun dibentuk menjadi dua pula yakni Nurul Haramain Putra dan Putri, yang sekarang lebih dikenal dengan eNHa Pa dan eNHa Pi.</p>', '', 0, 0),
(4, 12, 'Visi dan Misi', '<div><b>Visi</b></div><ul><li>Baik, </li><li>Benar, </li><li>Indah, </li><li>Bermanfaat,</li><li> Makmur</li></ul><div><b>Misi</b></div><div><br></div><ul><li>Mewujudkan santri dan santriwati yang mencintai dan gemar melakukan kebaikan dan kebenaran, mencintai keindahan, bermanfaat bagi ummat, hidup makmur dan memakmurkan.</li></ul>', '', 0, 0),
(5, 13, 'Tujuan Pendidikan', '<p>&nbsp</p>', '', 0, 0),
(6, 14, 'Kurikulum Pendidikan', '<p>&nbsp</p>', '', 0, 0),
(2, 10, 'Daftar Guru', '<p><!--[if gte mso 9]><xml>\r\n <w:WordDocument>\r\n  <w:View>Normal</w:View>\r\n  <w:Zoom>0</w:Zoom>\r\n  <w:TrackMoves></w:TrackMoves>\r\n  <w:TrackFormatting></w:TrackFormatting>\r\n  <w:PunctuationKerning></w:PunctuationKerning>\r\n  <w:ValidateAgainstSchemas></w:ValidateAgainstSchemas>\r\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\r\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\r\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\r\n  <w:DoNotPromoteQF></w:DoNotPromoteQF>\r\n  <w:LidThemeOther>EN-US</w:LidThemeOther>\r\n  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>\r\n  <w:LidThemeComplexScript>AR-SA</w:LidThemeComplexScript>\r\n  <w:Compatibility>\r\n   <w:BreakWrappedTables></w:BreakWrappedTables>\r\n   <w:SnapToGridInCell></w:SnapToGridInCell>\r\n   <w:WrapTextWithPunct></w:WrapTextWithPunct>\r\n   <w:UseAsianBreakRules></w:UseAsianBreakRules>\r\n   <w:DontGrowAutofit></w:DontGrowAutofit>\r\n   <w:SplitPgBreakAndParaMark></w:SplitPgBreakAndParaMark>\r\n   <w:DontVertAlignCellWithSp></w:DontVertAlignCellWithSp>\r\n   <w:DontBreakConstrainedForcedTables></w:DontBreakConstrainedForcedTables>\r\n   <w:DontVertAlignInTxbx></w:DontVertAlignInTxbx>\r\n   <w:Word11KerningPairs></w:Word11KerningPairs>\r\n   <w:CachedColBalance></w:CachedColBalance>\r\n  </w:Compatibility>\r\n  <m:mathPr>\r\n   <m:mathFont m:val=\\"Cambria Math\\"></m:mathFont>\r\n   <m:brkBin m:val=\\"before\\"></m:brkBin>\r\n   <m:brkBinSub m:val=\\"--\\"></m:brkBinSub>\r\n   <m:smallFrac m:val=\\"off\\"></m:smallFrac>\r\n   <m:dispDef></m:dispDef>\r\n   <m:lMargin m:val=\\"0\\"></m:lMargin>\r\n   <m:rMargin m:val=\\"0\\"></m:rMargin>\r\n   <m:defJc m:val=\\"centerGroup\\"></m:defJc>\r\n   <m:wrapIndent m:val=\\"1440\\"></m:wrapIndent>\r\n   <m:intLim m:val=\\"subSup\\"></m:intLim>\r\n   <m:naryLim m:val=\\"undOvr\\"></m:naryLim>\r\n  </m:mathPr></w:WordDocument>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:LatentStyles DefLockedState=\\"false\\" DefUnhideWhenUsed=\\"true\\"\r\n  DefSemiHidden=\\"true\\" DefQFormat=\\"false\\" DefPriority=\\"99\\"\r\n  LatentStyleCount=\\"267\\">\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"0\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Normal\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"heading 1\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 2\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 3\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 4\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 5\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 6\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 7\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 8\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 9\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 1\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 2\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 3\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 4\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 5\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 6\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 7\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 8\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 9\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"35\\" QFormat=\\"true\\" Name=\\"caption\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"10\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Title\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"1\\" Name=\\"Default Paragraph Font\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"11\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Subtitle\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"22\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Strong\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"20\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Emphasis\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"59\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Table Grid\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" UnhideWhenUsed=\\"false\\" Name=\\"Placeholder Text\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"1\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"No Spacing\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Light Shading\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Light List\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Light Grid\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Dark List\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Colorful List\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 1\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 1\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 1\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 1\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 1\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 1\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" UnhideWhenUsed=\\"false\\" Name=\\"Revision\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"34\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"List Paragraph\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"29\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Quote\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"30\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Intense Quote\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 1\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 1\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 1\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 1\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 1\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 1\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 1\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 1\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 2\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 2\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 2\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 2\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 2\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 2\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 2\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 2\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 2\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 2\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 2\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 2\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 2\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 2\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 3\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 3\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 3\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 3\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 3\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 3\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 3\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 3\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 3\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 3\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 3\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 3\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 3\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 3\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 4\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 4\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 4\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 4\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 4\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 4\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 4\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 4\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 4\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 4\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 4\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 4\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 4\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 4\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 5\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 5\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 5\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 5\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 5\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 5\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 5\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 5\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 5\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 5\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 5\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 5\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 5\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 5\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 6\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 6\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 6\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 6\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 6\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 6\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 6\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 6\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 6\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 6\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 6\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 6\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 6\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 6\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"19\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Subtle Emphasis\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"21\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Intense Emphasis\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"31\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Subtle Reference\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"32\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Intense Reference\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"33\\" SemiHidden=\\"false\\"\r\n   UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Book Title\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"37\\" Name=\\"Bibliography\\"></w:LsdException>\r\n  <w:LsdException Locked=\\"false\\" Priority=\\"39\\" QFormat=\\"true\\" Name=\\"TOC Heading\\"></w:LsdException>\r\n </w:LatentStyles>\r\n</xml><![endif]--><!--[if gte mso 10]>\r\n<style>\r\n /* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:\\"Table Normal\\"\r\n	mso-tstyle-rowband-size:0\r\n	mso-tstyle-colband-size:0\r\n	mso-style-noshow:yes\r\n	mso-style-priority:99\r\n	mso-style-qformat:yes\r\n	mso-style-parent:\\"\\"\r\n	mso-padding-alt:0in 5.4pt 0in 5.4pt\r\n	mso-para-margin-top:0in\r\n	mso-para-margin-right:0in\r\n	mso-para-margin-bottom:10.0pt\r\n	mso-para-margin-left:0in\r\n	line-height:115%\r\n	mso-pagination:widow-orphan\r\n	font-size:11.0pt\r\n	font-family:\\"Calibri\\",\\"sans-serif\\"\r\n	mso-ascii-font-family:Calibri\r\n	mso-ascii-theme-font:minor-latin\r\n	mso-fareast-font-family:\\"Times New Roman\\"\r\n	mso-fareast-theme-font:minor-fareast\r\n	mso-hansi-font-family:Calibri\r\n	mso-hansi-theme-font:minor-latin\r\n	mso-bidi-font-family:Arial\r\n	mso-bidi-theme-font:minor-bidi}\r\n</style>\r\n<![endif]-->\r\n\r\n<br></p><p class=\\"MsoNormal\\">~ aku hanyalah sebuah pena .<br>\r\nMencoba menuliskan cerita kau &amp aku .<br>\r\n~ Namun ...<br>\r\nAku pun hanya secarik kertas <br>\r\nYang berwarna hitam pekat.<br>\r\nHingga terasa sulit bagimu tuk bubuhi <br>\r\nDengan serangkai kata &amp ,tulisan mu.<br>\r\n<br>\r\n<b>~ menghilang kau lekas </b><br>\r\n<b>Wahai waktu yg tak berpihak padaku .</b><br>\r\n<b>Aku terlelah karena kehilangan Arah .</b><br>\r\n<b>Terdiam aku dalam hening ...</b><br>\r\n<b>Lalu aku berserah ...</b><br>\r\n<b>Aku bimbang lalu aku menghilang ...</b><br>\r\n<br>\r\n<b>~</b> kau bagai ranting yg kokoh <br>\r\nSementara dirimu rapuh ...<br>\r\nNamun kau tetap bertahan .<br>\r\nDalam kuat mu &amp senyum mu ..<br>\r\n<br>\r\nKau pernah salah dalam memilih nya <br>\r\nAku hilang dalam Arah nya...</p><p>\r\n\r\n<br></p><p class=\\"MsoNormal\\">&nbsp</p><p>\r\n\r\n<br></p><p class=\\"MsoNormal\\">&nbsp</p><p>\r\n\r\n<br></p><p class=\\"MsoNormal\\">&nbsp</p><p>\r\n\r\n<br></p><p class=\\"MsoNormal\\">Tidak ada jalan yang terlalu panjang bagi orang yang\r\nmelangkah tanpa tergesa-gesa dan tidak ada penghargaan yang tidak dapat diraih\r\nbagi orang yang mempersiapkan diri untuk mendapatkannya dengan kesabaran.\r\n(Bruyere).<br>\r\n<br>\r\nDALAM hidup ini begitu banyak tantangan yang harus dihadapi dengan kesabaran.\r\nBagi mereka yang tidak sabar, maka siap-siap untuk dikecewakan oleh tindakannya\r\nitu.<br>\r\n<br>\r\nKesabaran adalah kata yang indah dan mudah diucapkan, tapi ternyata tidak\r\nbanyak orang yang mampu melakukannya. Dan derajat kesabaran inilah sesungguhnya\r\nyang membedakan hidup orang sukses dengan orang gagal dalam aktivitas hidupnya.\r\nTermasuk di dalamnya berlaku juga pada dunia kerja di mana pun. Terkait dengan ini,\r\npantas saja seorang bijak pernah mengatakan, Orang sukses adalah orang yang\r\nterus mencoba, meskipun telah mengalami banyak kegagalan. Ia memandang\r\nkehidupan sebagai peluang untuk mencapai kesuksesan.<br>\r\n<br>\r\nDengan kata lain, di dunia ini tidak ada sesuatu kesuksesan apa pun yang tidak\r\ndapat diraih oleh orang-orang yang mampu mempersiapkan dirinya secara baik\r\nuntuk mendapatkannya dengan penuh kesabaran. Hal ini dapat kita buktikan dari\r\nkisah-kisah atau perjalanan hidup orang sukses. Di sini, dapat dipastikan kita\r\nakan menemukan nilai-nilai kesabaran di dalamnya.<br>\r\n<br>\r\nLangkah selanjutnya, setelah jiwa sabar itu bersemayam dalam diri dan perilaku\r\nAnda, maka langkah sukses itu harus didukung pula dengan apa yang sebenarnya\r\nmesti mereka ketahui dan lakukan untuk menjadi sukses. Dalam suatu sumber\r\ndisebutkan, ada tujuh hal yang dilakukan oleh mereka dalam meraih sukses.<br>\r\n<br>\r\nMau mengambil risiko. Orang sukses berupaya untuk mencapai target, melakukan\r\npenghematan, membangun relasi dengan banyak orang, dan gesit mencoba sesuatu\r\nyang baru guna mengikuti perkembangan zaman. David C. McClelland, seorang guru\r\nbesar yang mendalami perjalanan orang-orang sukses serta telah melakukan\r\nperjalanan ke banyak negara dan melatih pengusaha kecil, menyatakan cara\r\nmenjadi pengusaha kecil sukses adalah dengan menjadi pengambil risiko moderat\r\nyang mau terus mengambil risiko untuk meraih sukses.<br>\r\n<br>\r\nPercaya diri dan merasakan bahwa dirinya berbuat sesuatu untuk dunia. Orang\r\nsukses memandang sebuah dunia yang besar dan ingin memainkan peranan penting di\r\ndalamnya. Mereka tetap bekerja sesuai keterampilan mereka, sambil tetap\r\nmenyadari bahwa keterampilan inti memberi nilai kepada keterampilan lainnya.\r\nMereka juga sadar, karya terbaik akan menghasilkan kompensasi bagi mereka.<br>\r\n<br>\r\nMenikmati apa yang sedang mereka lakukan. Orang sukses mampu melihat pekerjaan\r\nsebagai kesenangan mereka memilih bekerja di mana mereka dapat unggul. Orang\r\nsukses menyukai tantangan mereka menikmati pencapaian puncak permainan mereka,\r\napakah di pekerjaan, dll.<br>\r\n<br>\r\nMenjadi pelajar seumur hidup. Orang sukses menyadari, pendidikan tak pernah\r\nberakhir tapi dimulai di setiap tingkatan kehidupan dan terus berlanjut hingga\r\nakhir kehidupan. Pendidikan tidak terbatas di ruang kelas artinya mencoba ide\r\nbaru, membaca buku, surat kabar, majalah, dan menggunakan Internet merupakan\r\nbentuk pendidikan pula. Karena itu, tetaplah mengalir sesuai perubahan\r\nketertarikan dan kemampuan Anda, dan nikmati perubahan. Ini akan membantu Anda\r\ntumbuh dan merasakan lebih percaya diri.<br>\r\n<br>\r\nBerpandangan positif terhadap apa yang dapat dikerjakan. Orang sukses percaya\r\ngelas itu setengah penuh dan bukan setengah kosong. Mereka menanamkan semangat\r\npada diri sendiri dan dapat membayangkan diri bagaimana mereka berhasil\r\nmenyelesaikan suatu tugas sulit atau mencapai penghargaan tertinggi. Orang\r\nsukses berbuat bagaikan pelatih bagi orang lain, dengan menyuguhkan pesan-pesan\r\npositif dalam kehidupan sehari-hari. Mereka senang melihat orang lain membuat\r\ntonggak sejarah dalam kehidupan mereka.<br>\r\n<br>\r\nMemotivasi diri sendiri. Orang sukses mempunyai banyak cara untuk memotivasi\r\ndiri sendiri sehingga dapat terus berkarya lebih baik dari yang lain. Ada yang\r\ndengan cara melakukan beberapa pekerjaan setiap hari pada bidang berbeda.\r\nSeorang pria setengah baya memotivasi dirinya sendiri dengan mencoba\r\nmendapatkan lebih banyak uang daripada kakaknya. Seorang wanita berusia 29\r\ntahun menjadi perawat top untuk menunjukkan kepada bekas gurunya bahwa dia\r\nmemiliki keterampilan dan kecerdasan memadai untuk mencapai profesi itu.<br>\r\nTidak bekerja setengah-setengah. Orang sukses menyelesaikan tugas tidak dengan\r\nsetengah-setengah. Mereka menggunakan cara kreatif dalam meraih sukses. Meski\r\nmungkin membutuhkan waktu lebih lama, mereka akhirnya melampaui garis finis.\r\nMereka manfaatkan waktu dengan baik dalam mensinergikan kemampuan fisik dan\r\nmental untuk mencapai sukses.<br>\r\n<br>\r\nAkhirnya, sesungguhnya setiap orang berpeluang untuk sukses dalam bidangnya\r\nmasing-masing, termasuk kita yang sedang berjuang mendapatkan pekerjaan atau\r\nsukses dalam usaha. Anda ingin sukses? Maka, tanamkanlah dalam diri Anda\r\nnilai-nilai kesabaran dan lakukan kiat-kiat tersebut sebagai realisasi\r\nkesabaran Anda. Waallahu a?lam.&nbsp</p><p>\r\n\r\n<br></p>', 'COOL-WHITE-BACKGROUNDS-004.JPG', 0, 0),
(1, 1, 'Struktur Yayasan', '<p>struktur yayasan ...&nbsp</p>', '', 0, 0),
(25, 40, 'Daftar File Download', NULL, '', 0, 0),
(50, 50, 'Kotak', 'kontak', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pusatdownload`
--

CREATE TABLE IF NOT EXISTS `pusatdownload` (
  `iddownload` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `file` varchar(255) DEFAULT NULL,
  `postdate` date DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`iddownload`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `pusatdownload`
--

INSERT INTO `pusatdownload` (`iddownload`, `title`, `content`, `file`, `postdate`, `author`) VALUES
(1, 'tes', 'keterangan', '0119_M.RAHMAN ARI WAHYUDI.PDF', '2016-05-12', 'Administrator'),
(2, 'aaa', 'aaaa', 'PESERTA_SESI_P2303126.PDF', '2017-03-05', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `idslider` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `keterangan` varchar(500) NOT NULL,
  `postdate` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idslider`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`idslider`, `title`, `keterangan`, `postdate`, `image`, `author`) VALUES
(1, 'Pon Pes Nurul Haramain NW', 'Toward Qualified Moeslim Generation <br> Menuju Masyarakat Madain', '2016-05-09', 'PON-PES-NURUL-HARAMAIN-PUTRA-NW-NARMADA-800X400.JPG', 'Administrator'),
(2, 'Madani Super Camp', 'Toward Qualified Moeslim Generation <br> Menuju Masyarakat Madain', '2016-05-09', 'MADANI-SUPER-CAMP-800X400.JPG', 'Administrator'),
(3, 'Pon Pes Nurul Haramain Putri', 'Toward Qualified Moeslim Generation <br> Menuju Masyarakat Madain', '2016-05-09', 'PON-PES-NURUL-HARAMAIN-PUTRI-NARMADA-800X400.JPG', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `stat`
--

CREATE TABLE IF NOT EXISTS `stat` (
  `idstat` int(11) NOT NULL AUTO_INCREMENT,
  `postdate` date DEFAULT NULL,
  `hit` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idstat`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1256 ;

--
-- Dumping data for table `stat`
--

INSERT INTO `stat` (`idstat`, `postdate`, `hit`) VALUES
(1164, '2015-03-27', '3'),
(1165, '2015-03-28', '1'),
(1166, '2015-03-29', '2'),
(1167, '2015-03-30', '7'),
(1168, '2015-03-31', '5'),
(1169, '2015-04-01', '10'),
(1170, '2015-04-02', '6'),
(1171, '2015-04-06', '5'),
(1172, '2015-04-07', '5'),
(1173, '2015-04-08', '15'),
(1174, '2015-04-09', '8'),
(1175, '2015-04-10', '3'),
(1176, '2015-04-13', '16'),
(1177, '2015-04-14', '7'),
(1178, '2015-04-15', '19'),
(1179, '2015-04-16', '6'),
(1180, '2015-04-24', '2'),
(1181, '2015-04-25', '6'),
(1182, '2015-04-26', '7'),
(1183, '2015-04-27', '6'),
(1184, '2015-04-28', '6'),
(1185, '2015-04-29', '4'),
(1186, '2015-04-30', '4'),
(1187, '2015-05-01', '4'),
(1188, '2015-05-02', '4'),
(1189, '2015-05-04', '1'),
(1190, '2015-05-07', '1'),
(1191, '2015-05-08', '1'),
(1192, '2015-05-24', '3'),
(1193, '2015-05-25', '5'),
(1194, '2015-05-26', '3'),
(1195, '2015-05-27', '2'),
(1196, '2015-06-01', '1'),
(1197, '2015-06-02', '1'),
(1198, '2015-06-03', '2'),
(1199, '2015-06-05', '3'),
(1200, '2015-06-13', '3'),
(1201, '2015-06-14', '2'),
(1202, '2015-06-15', '1'),
(1203, '2015-08-03', '4'),
(1204, '2015-08-05', '3'),
(1205, '2015-08-11', '1'),
(1206, '2015-08-14', '1'),
(1207, '2015-08-15', '1'),
(1208, '2015-08-16', '1'),
(1209, '2015-08-17', '1'),
(1210, '2015-08-18', '3'),
(1211, '2015-08-19', '4'),
(1212, '2015-08-21', '1'),
(1213, '2015-08-23', '3'),
(1214, '2015-08-25', '1'),
(1215, '2015-08-26', '3'),
(1216, '2015-08-27', '2'),
(1217, '2015-08-28', '1'),
(1218, '2015-09-01', '2'),
(1219, '2015-09-07', '6'),
(1220, '2015-09-08', '2'),
(1221, '2015-09-09', '1'),
(1222, '2015-09-10', '4'),
(1223, '2015-09-11', '7'),
(1224, '2015-09-12', '3'),
(1225, '2015-09-13', '1'),
(1226, '2015-09-14', '1'),
(1227, '2015-09-15', '2'),
(1228, '2015-09-17', '8'),
(1229, '2015-09-18', '5'),
(1230, '2015-09-19', '2'),
(1231, '2015-09-22', '20'),
(1232, '2015-09-27', '1'),
(1233, '2015-09-28', '3'),
(1234, '2015-09-29', '3'),
(1235, '2015-10-01', '6'),
(1236, '2015-10-02', '4'),
(1237, '2015-10-03', '2'),
(1238, '2015-10-04', '10'),
(1239, '2015-10-07', '3'),
(1240, '2015-10-10', '2'),
(1241, '2015-10-11', '2'),
(1242, '2015-10-14', '1'),
(1243, '2015-10-15', '2'),
(1244, '2015-10-17', '5'),
(1245, '2015-10-18', '4'),
(1246, '2015-10-19', '6'),
(1247, '2015-10-20', '1'),
(1248, '2015-10-23', '1'),
(1249, '2015-11-01', '1'),
(1250, '2015-11-11', '1'),
(1251, '2016-02-12', '2'),
(1252, '2016-02-13', '1'),
(1253, '2016-02-14', '3'),
(1254, '2016-02-15', '1'),
(1255, '2016-02-16', '1');

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE IF NOT EXISTS `support` (
  `idsupport` int(11) NOT NULL AUTO_INCREMENT,
  `caption` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `ymid` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idsupport`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `support`
--

INSERT INTO `support` (`idsupport`, `caption`, `ymid`) VALUES
(1, 'Jack Okoka', 'okoka_ortal@yahoo.com'),
(2, 'Julia E. Laly', 'angelrivan@yahoo.co.id');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `idusers` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `email` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `idgroup` int(15) NOT NULL,
  `author` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `idskpd` int(2) DEFAULT '0',
  `level` varchar(10) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`idusers`,`username`),
  KEY `idusers` (`idusers`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idusers`, `username`, `nama`, `pass`, `email`, `idgroup`, `author`, `idskpd`, `level`) VALUES
(1, 'admin', 'Administrator', '21232f297a57a5a743894a0e4a801fc3', 'info@gi.co.id', 1, '', 0, 'admin'),
(5, 'operator', 'Operator Website', 'f43b58ecb5c5ca722e6c8400cb996aa2', 'saefudinhabibie@gmail.com', 2, '', 0, ''),
(8, 'saef', 'Saefudin Habibie', 'fdced9dd653cb2bf4be605b992c58dcf', 'saefudinhabibie@gmail.com', 2, NULL, 0, ''),
(9, 'habib', 'saefudin habibie', '21232f297a57a5a743894a0e4a801fc3', 'saefudinhabibie@gmail.com', 2, NULL, 0, '');
