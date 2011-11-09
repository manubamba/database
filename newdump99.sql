-- MySQL dump 10.13  Distrib 5.1.37, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: massidea
-- ------------------------------------------------------
-- Server version	5.1.37-1ubuntu5.5

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
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(140) DEFAULT NULL,
  `lead` text,
  `body` text,
  `start_time` date DEFAULT NULL,
  `end_time` date DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
INSERT INTO `campaigns` VALUES (1,'fdsf','sdf','sdf',NULL,NULL,'2010-09-13 10:14:53','2010-09-13 10:14:53'),(2,'fffffffff','ff','f','2010-09-13','0000-00-00','2010-09-13 10:15:25','2010-09-13 10:15:25'),(4,'MW campaign 01','Donec placerat tortor sed arcu aliquet lobortis. Suspendisse dui eros; commodo in tincidunt eu, ornare eget diam! Quisque et cursus ante. Nam laoreet dui in nulla dictum adipiscing. Ut eget tortor vel nisi aliquam porttitor. Aliquam eleifend vehicula urna, ut cras amet.\r\n','Aenean magna purus, commodo at adipiscing feugiat, euismod non metus. Donec rhoncus semper erat, vitae pulvinar nisl imperdiet sit amet. Sed tempus eros vel ligula placerat vehicula. Etiam vel mauris magna, at vulputate diam. Duis eleifend, magna ut eleifend dapibus, ipsum sapien dignissim lacus, eget ornare neque erat in nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed libero nunc, bibendum nec eleifend sit amet, interdum vitae felis. Integer vehicula iaculis dui; a auctor lectus consequat vel. Donec sagittis ultricies dui nec dapibus. Ut luctus dui nec tellus auctor dapibus. Praesent laoreet mauris ut dolor mattis fringilla. Aliquam erat volutpat. In malesuada, velit quis condimentum viverra, quam magna tristique purus, eget faucibus turpis eros at tortor. Fusce et diam a eros mattis mollis. Praesent non nisi justo. Aenean sed volutpat.\r\n','2010-10-30','2010-10-31','2010-09-20 11:24:46','2010-09-20 11:24:46'),(5,'MW campaign 02','Nunc placerat eleifend erat, at mattis ante iaculis malesuada. Sed nunc tortor, bibendum eget vestibulum eget, vehicula et odio. Curabitur sollicitudin blandit tortor, ut pellentesque eros placerat tincidunt. Donec vehicula vestibulum dignissim. Fusce turpis magna amet.\r\n','Donec et tincidunt lectus. Curabitur bibendum cursus nunc sed convallis. Suspendisse imperdiet massa vel libero vehicula in scelerisque felis sodales! Etiam at elit sed tortor ornare tempor a in quam. Curabitur pretium vehicula sapien, sed malesuada magna malesuada at. Ut id varius sem. Nam mollis dui ac ante semper ut convallis turpis tincidunt. Morbi urna ipsum, euismod eu sollicitudin eu, pharetra id risus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In lectus nulla, malesuada eget lobortis eu, imperdiet ut lectus. Nulla vulputate tincidunt ipsum, non malesuada enim elementum vel. In hac habitasse platea dictumst. Proin a turpis nec nunc semper aliquam et vel tortor. Donec quis libero a tellus tempor tempus ac quis tortor. Quisque sed pellentesque tellus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cras amet.\r\n','2010-09-20','2010-09-21','2010-09-20 11:25:26','2010-09-20 11:25:26'),(6,'MW campaign 03','Nam vitae erat et enim pellentesque feugiat eget eu ante. Mauris ultrices, turpis vel dapibus vulputate; nibh libero lobortis diam, adipiscing egestas nibh urna nec augue. Etiam non semper leo. Mauris rhoncus facilisis placerat. Donec eu quam lorem. Maecenas massa nunc.\r\n','Morbi lorem lectus, interdum vel pulvinar nec, porta in orci. Vestibulum viverra augue sed lorem egestas elementum. Nunc vehicula felis nisi? Sed et arcu mauris. Nulla adipiscing, turpis ut faucibus mollis, tortor augue rhoncus nibh, at vestibulum lectus augue ac urna. Donec sit amet leo neque, a dictum quam! In justdsfdso nibh, aliquam ac placerat eu, pharetra rutrum sem. Integer euismod, ante non rutrum dignissim, lectus massa hendrerit felis, sit amet molestie orci arcu in ligula! Nulla lacus nulla, fermentum vitae imperdiet quis, sodales sit amet nunc? Morbi placerat adipiscing nibh, vel volutpat lorem convallis nec. Vestibulum euismod scelerisque felis sed mattis? Cras auctor sodales lectus, et elementum nisi commodo quis.\r\n\r\nSuspendisse blandit tellus sit amet odio pellentesque pulvinar. Phasellus sed eros ut magna porta sollicitudin? Donec varius ornare dapibus. Cras scelerisque cras amet.\r\n','2010-09-21','2010-09-30','2010-09-20 11:25:58','2010-09-20 11:25:58'),(7,'. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ..','. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ','. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . v. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ','2010-09-28','2010-09-30','2010-09-27 11:20:42','2010-09-27 11:20:42'),(8,'issue','issue','issue','2010-09-29','0000-00-00','2010-09-29 11:44:39','2010-09-29 11:44:39'),(9,'hjghjgh','jghjghjgh','jghjgh','2010-09-29','0000-00-00','2010-09-29 11:48:42','2010-09-29 11:48:42'),(10,'Kampanjata','Aenean in odio tellus. Morbi lectus lorem, feugiat ut consectetur eu, laoreet nec mi. Fusce gravida leo eget mi mattis ac posuere lorem facilisis! Duis sed vehicula quam! Pellentesque mollis tincidunt consequat? Nulla rutrum, justo a consectetur scelerisque, purus amet.\r\n','Donec lacus ligula, rutrum quis blandit ut; faucibus eget massa? Suspendisse ullamcorper eros quis nisi malesuada egestas. Suspendisse gravida luctus nibh lacinia mollis. Duis porta auctor fermentum! Aenean aliquam semper eros at gravida. Aenean non risus odio! Mauris adipiscing nunc vitae eros ultricies sollicitudin! Pellentesque condimentum cursus est; eu porta lacus mattis sit amet. Maecenas scelerisque, turpis nec consequat gravida; ipsum nisi congue lectus; et porttitor quam justo quis lorem. Pellentesque vitae ante diam, at ullamcorper lorem. Nullam pretium urna vitae justo rhoncus malesuada. Sed placerat aliquam massa et tristique. Mauris orci nunc, ultricies sed sollicitudin at, molestie a massa. Sed non urna turpis. Morbi in dui ut dolor convallis tristique eu nec nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus posuere.\r\n','2010-09-29','2010-11-19','2010-09-29 19:11:40','2010-09-29 19:11:40'),(14,'testi kamppis','When (temporal dimension) the campaign is active. Is this a permanent campaign for long-term collaboration or temporary and operating only limited time.','When (temporal dimension) the campaign is active. Is this a permanent campaign for long-term collaboration or temporary and operating only limited time.When (temporal dimension) the campaign is active. Is this a permanent campaign for long-term collaboration or temporary and operating only limited time.\r\n\r\nWhen (temporal dimension) the campaign is active. Is this a permanent campaign for long-term collaboration or temporary and operating only limited time.\r\n\r\nWhen (temporal dimension) the campaign is active. Is this a permanent campaign for long-term collaboration or temporary and operating only limited time.','2010-09-30','0000-00-00','2010-09-30 11:50:01','2010-09-30 11:50:01'),(15,'Uusi kamppis 1','dfsaa',NULL,'2010-10-01','0000-00-00','2010-10-01 01:00:19','2010-10-01 01:00:19'),(16,'Shortly explain the purpose of the group by answering to what, who and whom questions. This information is shown on the group listing pages ','asdasd','asdasd','2010-10-01','0000-00-00','2010-10-01 08:22:29','2010-10-01 08:22:29'),(19,'Koekoe','das',NULL,'2010-10-01','0000-00-00','2010-10-01 14:02:49','2010-10-01 14:02:49'),(20,'dsa','dsa',NULL,'2010-10-01','0000-00-00','2010-10-01 14:03:40','2010-10-01 14:03:40'),(21,'ELLO','Morbi sit amet elit felis! Integer sit amet arcu et arcu vulputate blandit vitae sed neque. Sed ut elit vel ipsum venenatis ullamcorper. Fusce vel nisl at est ornare scelerisque. Nulla et lectus sed nibh accumsan molestie. Phasellus ultricies euismod ante, ut cras amet.\r\n','Integer placerat tincidunt justo ut iaculis. In hac habitasse platea dictumst. Pellentesque rutrum magna non ligula sollicitudin placerat? Sed nec neque lorem, non porttitor elit. Nulla mi nulla, volutpat id ullamcorper at; eleifend eget neque. Pellentesque dictum tristique urna, quis porttitor urna tempus quis. Vestibulum dignissim volutpat ultricies. Curabitur rhoncus pellentesque libero sit amet vestibulum. Curabitur vitae diam ac metus mattis viverra. Mauris arcu nisl, iaculis et pulvinar id, rutrum auctor odio! Nam ut enim a massa pretium lobortis quis ac ligula. Aenean ac urna mi, id feugiat elit? Quisque gravida consequat metus ut blandit! Nulla elit mauris, blandit ut lacinia eu, bibendum ut nunc. Aliquam adipiscing congue ante at tincidunt.\r\n\r\nNulla id metus et lorem ultricies ornare. Quisque lectus risus, rutrum non auctor quis, lobortis eu metus? Fusce ornare condimentum volutpat.\r\n','2010-10-06','0000-00-00','2010-10-06 12:25:13','2010-10-06 12:25:13'),(22,'Projektit','In consectetur diam id turpis pharetra tincidunt. Curabitur fermentum, erat non adipiscing pellentesque, nulla risus vehicula mi, ut hendrerit velit arcu congue augue. In faucibus orci sit amet tellus ultricies in eleifend augue ullamcorper. Nam dictum egestas volutpat.\r\n','Etiam quis semper eros. Curabitur dictum congue ante sit amet eleifend? Pellentesque id sapien nunc. Nullam eget orci ut mi imperdiet euismod sit amet nec neque. Nullam urna neque, ultrices eu viverra vitae, rhoncus eu dolor. Nulla molestie, lectus et ultrices vulputate, risus est aliquet nunc, at dictum enim diam id erat. Suspendisse nibh ligula, malesuada non posuere a, interdum ut felis. Sed tincidunt mauris in mauris dignissim interdum. Quisque tempus; magna at rhoncus porta, erat erat rutrum mauris, vel dignissim urna magna sit amet risus. Maecenas enim lorem, aliquam at faucibus eu, pulvinar sed diam. Mauris tempor, risus non tincidunt pharetra, nisi mi vulputate ante, a consectetur libero leo sit amet ipsum. Morbi eget turpis ut odio hendrerit convallis!\r\n\r\nNulla at sem eget velit dignissim consectetur. Maecenas dui lacus; eleifend adipiscing laoreet non, dapibus sit amet magna metus.\r\n','2010-10-06','0000-00-00','2010-10-06 12:37:27','2010-10-06 12:37:27'),(23,'Mauris egestas adipiscing ligula at cursus.','Nunc id elit massa, a tincidunt sapien. Duis condimentum velit sit amet ipsum bibendum eu laoreet diam ultricies. Morbi tortor felis, iaculis eget vulputate ac, pharetra quis nulla? Nulla facilisi. Aliquam iaculis lectus metus. Mauris non dui vitae elit interdum nullam.\r\n','Vivamus commodo ipsum ut lorem molestie ut pretium elit condimentum. In ante odio, tincidunt vel cursus blandit, dictum eu nisl. Nunc a purus nulla, nec sollicitudin arcu. Nulla orci sapien, placerat sit amet molestie nec, elementum nec quam. Pellentesque in urna odio. Sed in ipsum blandit erat luctus mattis! Nam ac vulputate magna. Nam semper velit nec risus imperdiet tristique? Nullam at arcu nec enim pellentesque tempus. Ut ac lectus in justo venenatis consequat eget lobortis erat. Nullam eget viverra nulla. Praesent vel erat ut mauris tincidunt volutpat. In quis metus eu erat tempus vestibulum. Sed commodo ultricies euismod! Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;\r\n\r\nVestibulum varius turpis in urna auctor adipiscing! Nullam nec nibh lacus. Duis nec diam neque. Suspendisse vitae nisl sit amet quam gravida condimentum id sed risus cras amet.\r\n','2010-10-06','0000-00-00','2010-10-06 20:32:53','2010-10-06 20:32:53'),(24,'In luctus turpis non elit placerat.','Nunc sed vulputate felis. Mauris tincidunt dapibus placerat. Morbi iaculis nulla a mauris vehicula non pretium lorem tempor. Maecenas dapibus, mauris vitae venenatis faucibus, mi augue tristique purus, a malesuada ipsum libero a magna. Mauris feugiat diam vel justo sed.\r\n','Sed condimentum arcu tempus diam porttitor dapibus. Sed ac blandit metus. Nullam nibh felis, iaculis dictum ultrices ac, posuere a quam. In vel magna lacus. In diam augue, aliquam nec varius vitae, tincidunt accumsan arcu! Mauris semper, nibh sit amet vestibulum convallis, mi mauris ullamcorper lacus, ut iaculis elit diam sed turpis? Fusce tincidunt lacus vel ligula varius pharetra. Aliquam tempus mollis risus; nec pretium metus placerat ut. Sed congue, nisl nec tempor facilisis, ipsum metus vehicula neque, sit amet bibendum tortor leo sed quam. In consectetur suscipit nisi vitae cursus. Curabitur pharetra pharetra sem ut elementum! Cras accumsan luctus tellus. Donec at adipiscing libero. Nunc eu sem lacus. Fusce nisl nibh, rutrum sit amet ultricies sit amet, tempor sodales lacus.\r\n\r\nAenean odio orci, porta id malesuada id, auctor ut dui. Cum sociis natoque penatibus et magnis dis cras amet.\r\n','2010-10-30','2010-10-30','2010-10-06 20:48:40','2010-10-06 20:48:40'),(25,'Suspendisse potenti. Nullam sed massa nunc?.','Donec id mi nibh. Curabitur lacus magna, dapibus id pulvinar sollicitudin, malesuada at purus. Nulla facilisi. Duis lobortis sem quis orci gravida id fermentum nibh ullamcorper. Cras congue risus non nibh blandit a porttitor sem rhoncus. Mauris semper tempus massa nunc.\r\n','Quisque eu nisi at augue facilisis tincidunt? Ut pretium dolor ante. Nullam eros tortor; imperdiet non convallis et, sodales et turpis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur ullamcorper, ligula et rhoncus commodo, odio nibh interdum purus, quis euismod erat ligula sit amet lacus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse vel laoreet tellus? Suspendisse iaculis nulla pharetra elit euismod quis sodales purus convallis. Cras turpis est, consectetur nec condimentum vel, porta non diam! Integer tempus dapibus hendrerit. Suspendisse tortor velit, viverra nec malesuada in, lacinia ac elit! Cras id turpis risus. Nunc neque leo, sollicitudin sit amet elementum eu, scelerisque scelerisque turpis? Praesent vitae dolor vel nisi ornare egestas. Nulla eu nibh volutpat ipsum porta volutpat.\r\n','2010-10-06','2010-10-07','2010-10-06 20:49:01','2010-10-06 20:49:01'),(26,'Donec ac mauris id nisi porta.','Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus eu urna sit amet turpis molestie tempor. Maecenas nec dui id erat vestibulum tristique id nec ipsum. Nam congue odio non metus tempus malesuada. Nunc facilisis est cras amet.\r\n','Nullam diam urna; aliquam eget suscipit viverra, varius nec lorem. Donec viverra, eros quis eleifend ullamcorper, nulla ante ornare erat; id tempor libero turpis eu quam? In consectetur metus a metus lobortis a molestie eros pulvinar. Praesent urna metus, facilisis eu tempus eu, vehicula non magna. Integer accumsan pretium euismod. Integer blandit quam nec sem ultrices feugiat. Duis id felis velit, sed tempus ligula! Nunc dolor turpis, consequat vitae vehicula vitae, laoreet in erat. In vulputate, velit eget tincidunt pretium; quam ante adipiscing arcu, vel porta magna lacus ut ante. Vestibulum non tempor enim! Vestibulum elit metus, fringilla et commodo sit amet, dictum nec odio. Donec congue ante vitae leo dictum tempus.\r\n\r\nVestibulum vitae justo orci. Nullam dignissim sagittis leo sed blandit. Donec vel neque sit amet risus iaculis dictum non hendrerit ligula. Donec leo leo viverra fusce.\r\n','2010-10-06','2010-10-07','2010-10-06 20:52:24','2010-10-06 20:52:24'),(27,'Cras ut odio nulla. Morbi at.','Sed semper mauris nec odio ultrices mollis! Phasellus imperdiet hendrerit magna eget adipiscing. Maecenas purus ligula, blandit vitae egestas sit amet, pharetra at ipsum. Etiam sagittis semper rutrum. Sed ipsum eros, commodo quis elementum auctor, sodales vel cras amet.\r\n','Sed rhoncus velit in risus laoreet id vehicula mauris vulputate. Vestibulum ultrices ipsum ut sapien dapibus ac porta magna auctor. Vivamus dolor libero, mattis nec imperdiet in, tempor tristique elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris purus arcu, porttitor et placerat sed, viverra eu velit! Nullam lacinia nunc cursus felis varius consequat! Maecenas justo nibh, malesuada sed adipiscing sit amet, semper vitae tellus? Aliquam mattis sem vel sem lacinia at lobortis neque viverra. Sed eget velit erat. Etiam ornare ipsum vel metus adipiscing sed malesuada ipsum ornare. Duis commodo enim vitae purus iaculis tincidunt. Aenean ac nibh augue; et semper nisi. Sed a odio mauris, et congue nulla! Nullam elementum auctor suscipit. Donec rutrum adipiscing sapien eget porttitor. Nulla sed urna sed ligula ornare luctus in id magna. Maecenas arcu felis, tincidunt vitae sed.\r\n','2010-10-11','0000-00-00','2010-10-11 10:13:27','2010-10-11 10:13:27'),(29,'sdf','sdf','testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK testi EKEKEK ',NULL,NULL,'2010-10-12 12:49:01','2010-10-12 12:49:01'),(31,'sdf','sdf',NULL,'2010-10-12','0000-00-00','2010-10-12 12:52:09','2010-10-12 12:52:09'),(32,'tiedosto','tesfda',NULL,'2010-10-12','0000-00-00','2010-10-12 12:53:19','2010-10-12 12:53:19'),(33,'tiedosto','tesfda',NULL,'2010-10-12','0000-00-00','2010-10-12 12:54:12','2010-10-12 12:54:12'),(34,'tiedosto','tesfda',NULL,'2010-10-12','0000-00-00','2010-10-12 12:54:34','2010-10-12 12:54:34'),(35,'tiedosto5','asdf',NULL,'2010-10-12','0000-00-00','2010-10-12 13:35:24','2010-10-12 13:35:24'),(36,'tiedosto6','asdf',NULL,'2010-10-12','0000-00-00','2010-10-12 13:36:36','2010-10-12 13:36:36'),(37,'tiedosto6','asdf',NULL,'2010-10-12','0000-00-00','2010-10-12 13:37:38','2010-10-12 13:37:38'),(38,'Nulla molestie mattis tincidunt. Phasellus mattis.','Aenean posuere diam quis dui viverra quis rhoncus leo aliquam. Nullam auctor ipsum sit amet nulla tempor eleifend. Mauris lorem augue; congue sed tempus at, hendrerit in erat. ','Nunc id vestibulum leo. Nullam euismod, nunc eu hendrerit porta, ligula odio tincidunt ligula, a semper dui lacus ac elit. Donec eu arcu ut nisi accumsan ultricies. Mauris mi nisl, fermentum vitae consectetur ut, tincidunt id lacus. Vestibulum tristique dignissim molestie. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac posuere libero. Morbi id arcu vel urna hendrerit semper. Duis vel suscipit felis. Morbi sagittis aliquet hendrerit. Suspendisse varius risus in lorem aliquet tincidunt. Cras accumsan accumsan lobortis. In sollicitudin felis at nunc lacinia non condimentum neque tempor. Mauris mollis varius libero ac rhoncus? Nam volutpat justo feugiat nulla luctus nec consequat turpis mollis.\r\n\r\nPellentesque vehicula metus porttitor sapien accumsan commodo! Quisque sapien libero, varius ac imperdiet a; tempus vitae erat. Mauris consectetur euismod ante, et placerat velit. sed.\r\n',NULL,NULL,'2010-10-13 10:00:59','2010-10-13 10:00:59'),(39,'ad','ad','ads','2010-10-18','0000-00-00','2010-10-18 15:08:10','2010-10-18 15:08:10'),(40,'Megakampanja','JEPA!','WOOOOT','2010-10-18','0000-00-00','2010-10-18 15:23:34','2010-10-18 15:23:34'),(41,'Kamppis koe ilman pvm','Short description\r\nShortly explain the purpose of the campaign by answering to what, who and whom questions.\r\n\r\nShort description\r\nShortly explain the purpose of the campaign by answering to what, who and whom questions.\r\n\r\nShort description\r\nShort description\r\n\r\n','dsa','2010-10-19','0000-00-00','2010-10-19 13:28:12','2010-10-19 13:28:12'),(42,'dfg','dfg',NULL,'2010-10-20','0000-00-00','2010-10-20 10:30:33','2010-10-20 10:30:33'),(43,'Kyamk kampanja pitkällä nimellä, Vestibulum ultrices lectus sed dolor sagittis. Jotain täytettä tänne loppuun vielä.','Morbi mollis luctus dolor; non condimentum tellus egestas ut. Nunc rutrum rutrum nibh, accumsan dignissim augue posuere non. In lacinia; justo vitae auctor aliquet, ante leo lacinia orci; at rhoncus tortor augue a risus. Sed at diam ac justo eleifend condimentum nullam.\r\n','Morbi ut mauris eu augue dapibus lobortis at vitae enim. Mauris quis libero nec orci imperdiet viverra vel ut nisi. Pellentesque quis enim sit amet urna hendrerit hendrerit sit amet quis nunc. Nullam lectus justo, feugiat a auctor eleifend, luctus in neque. Pellentesque luctus lacus et risus volutpat congue. Morbi congue felis sit amet tellus elementum pellentesque id feugiat libero. In hac habitasse platea dictumst. Morbi vulputate nisi et felis consequat non venenatis ligula posuere. Phasellus et sapien dui, nec blandit justo! Integer feugiat, ligula eu porta adipiscing, ante libero volutpat quam, vel ornare diam ante nec odio. Suspendisse vel adipiscing dui. Suspendisse venenatis pharetra diam, volutpat porta turpis lobortis sit amet. Mauris tempor faucibus nulla eget lobortis. Sed aliquet egestas aliquam. Integer id ornare lectus. In ac risus sed elit aliquet laoreet quis id posuere.\r\n','2010-10-24','2010-10-30','2010-10-24 12:16:20','2010-10-24 12:16:20'),(44,'Deathstars','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam elementum hendrerit semper. Curabitur quis nibh in purus tempus interdum eu a leo! Maecenas gravida quam ac mi lobortis sit amet pulvinar purus rhoncus. Nulla cras amet.\r\n','Aliquam a dolor sapien. Nulla ultricies dignissim leo, non porta mauris hendrerit quis. Proin molestie gravida tortor, ut malesuada ante malesuada ac. Sed congue tellus non lacus interdum at volutpat dui semper. Etiam porta est fermentum nibh luctus imperdiet. Sed ut ante neque? Nulla vitae urna in urna sagittis dictum. Praesent at sem nisl? Curabitur id lectus id tellus auctor viverra et non arcu. Aenean molestie libero eu enim faucibus ullamcorper pretium risus ornare.\r\n\r\nInteger euismod, sapien id iaculis semper, lectus tellus luctus diam, in condimentum libero urna nec libero. Vestibulum tempus tincidunt lectus in molestie. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque dignissim turpis non felis ornare consectetur gravida libero porttitor. Nam sit amet lacus nulla, non dictum lacus. Nunc ac orci libero, et suscipit dolor! In eget odio amet.\r\n','2010-10-26','2010-10-30','2010-10-26 13:41:42','2010-10-26 13:41:42'),(45,'Testi kampanja lopetukseen','Pellentesque massa tellus, consequat et condimentum a, placerat vitae nunc. Duis adipiscing iaculis dui, ac fringilla nulla iaculis eget. Cras elit nisl, ultrices id porttitor ullamcorper, mattis euismod tortor. Aliquam id aliquam dolor. Nulla facilisi. Suspendisse sed.\r\n','Curabitur lectus enim, viverra nec fringilla in, fringilla ac mauris. Donec metus purus, tempus a porttitor a, luctus in neque. Mauris vehicula auctor ante; quis pulvinar massa blandit nec. Aliquam quam nunc, semper ut suscipit sit amet, egestas vitae lorem. Donec eleifend euismod laoreet. Phasellus laoreet metus commodo dui dapibus ut posuere dui semper. Quisque quis nunc tortor, at pretium magna. Fusce ac mollis sem? Proin condimentum magna nec quam viverra pulvinar. Maecenas nec sagittis ligula?\r\n\r\nMaecenas sit amet justo velit; id condimentum leo? Nullam eget blandit lacus. Etiam ultricies turpis ut est porttitor vel porta erat facilisis. Integer eget nisl diam, vel adipiscing diam. Ut lorem metus, tempus eget aliquet non, sodales sed orci! Mauris ultrices viverra bibendum. Donec ut lacus eu diam tempor fringilla? Mauris adipiscing justo ut elit rutrum pulvinar. Phasellus nullam sodales.\r\n','2010-10-31','2010-10-30','2010-10-31 11:52:59','2010-10-31 11:52:59'),(46,'Morbi a felis eget dolor eleifend.','Nulla vestibulum elementum dui ac hendrerit. Duis tortor ligula, condimentum porta vulputate eu, blandit sed neque. Nulla tristique sodales erat; eu lacinia sem ultricies vitae. Aliquam eget lectus id quam ullamcorper facilisis? Morbi egestas eros nec elit mollis metus.\r\n','Duis ultricies convallis lobortis. Etiam nulla neque, elementum nec sagittis ut, lobortis sit amet dolor! Pellentesque et purus nisi; non ultricies ante. Nam vestibulum, diam ac iaculis ornare, metus libero placerat erat, ac congue felis ipsum vel sem! Vestibulum non purus mattis massa gravida scelerisque? Sed ultricies nisi in lorem pellentesque nec dignissim lacus dignissim. Curabitur quam nunc, pellentesque vel dictum ac, dictum eget diam. Donec arcu eros, auctor non dignissim a, euismod ac sapien. Morbi sed urna lobortis massa interdum bibendum. Morbi elementum enim id dui malesuada sit amet posuere dui adipiscing. Nam sed orci eu orci aliquam gravida. Praesent condimentum ipsum vel tortor porttitor vulputate. Mauris convallis lectus vitae massa accumsan at elementum nunc elementum.\r\n\r\nFusce ullamcorper lorem et mi mollis sit amet iaculis arcu luctus. Morbi pharetra viverra orci aliquam.\r\n','2010-11-15','0000-00-00','2010-11-15 10:36:16','2010-11-15 10:36:16'),(47,'gsd','gsg',NULL,'2010-11-22','0000-00-00','2010-11-22 13:56:41','2010-11-22 13:56:41'),(48,'bugitesti01','Suspendisse nec risus sapien, in imperdiet justo. Etiam velit elit; fermentum at scelerisque at, tristique qushis nisi. Pellentesque inam nisl. Mauris ut metus ac ligula commodo consectetur. Morbi nulla felis, auctor vel aliquam a, auctor eget sem? Sed at orci aliquam.\r\n','Mauris quis dolor vel lacus tristique consequat. Duis nulla nunc, hendrerit non volutpat sit amet, dictum sed odio. In hac habitasse platea dictumst. Praesent ullamcorper orn bibendum? Nunc mattis tellus eget velit adipiscing feugiat. Mauris placerat enim vitae eros viverra vel tempor est eleifend. Cras dignissim, ante eu dictum mollis, dolorghs diam dapibus elit, vitae tincidunt lectus purus sed turpis. Vivamus vehicula, urna eget pellentesque blandit, metus mi tempor arcu, et tempor turpis lectus a sem. Integer vulputate, tortor nec ultrices faucibus, sapien purus rutrum turpis, nec congue erat risus id nisl. Fusce massa turpis, facilisis id iaculis sit amet, faucibus et lacus. Maecenas ultricies, ligula dictum vulputate hendrerit, sem elit convallis erat; id scelerisque elit massa quis velit. Quisque risus diam, bibendum at rhoncus eu, imperdiet eget odio. Quisque ligula magna nullam.\r\n','2011-01-14','0000-00-00','2011-01-14 10:46:07','2011-01-14 10:46:07'),(49,'bugitesti02','Maecenas pellentesque nisi molestie arcu tincidunt mollis. Maecenas malesusdfdsada adipiscing velit, molestie luctus tellus fringilla eu. Vestibulum facilisis sodales purus quis pellentesque. Morbi quis felis dolor, ac luctus leo? Nam tempus tincidunt nisi ac aliquet nullam.\r\n','Quisque a mi ut urna volutpat euismod a a leo. Suspendisse pharetra feugiat libero, ut rutrum tellus eleifend ac. Aenean augue libero, tincidunt quis mattis quis, blandit eget erat. Ut non lacus feugiat urna porta vehicula vel porta nisldfdsfds. Sed eget lectus nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ultrices erat a felis lobortis suscipit? Vivamus eu justo non dolor bibendum semper eget mattis sem. Quisque arcu mauris, hendrerit quis imperdiet ut, iaculis at tellus. Suspendisse mi sapien, pellentesque non mattis vel; posuere gravida turpis. Sed lacus metus, iaculis nec interdum sit amet, sagittis in diam. Phasellus iaculis, lacus sit amet luctus volutpat, nunc leo suscipit libero, vitae semper magna nisl a justo. Nam hendrerit erat non lectus pharetra non facilisis nisi porttitor. In nibh arcu, blandit vel gravida id, rutrum rutrum urna. Sed ultrices nisl nullam.\r\n','2011-01-13','2011-01-13','2011-01-14 10:51:30','2011-01-14 10:51:30'),(50,'bugitesti03','Nam venenatis mollis leo vel gravida? Sed viverra sodales risus, a consequat sem rhoncus ut. Praesent ac nulla in magna pharetra tincidunt. Morbi lacus mi, tincidunt venenatis aliquam ac; posuere id neque. Quisque elementum rutrum tortor quis lacinia. Duis ultrices sed.\r\n','Duis hendrerit varius nisi eget congue. Nullam mi mauris, iaculis eu bibendum eu, posuere eu elit. Maecenas nec ipsum libero! Nam dolor tortor, suscipit sodales pharetra ac, vestibulum a nibh. Suspendisse auctor venenatis orci at lacinia? Morbi mauris libero, interdum ut accumsan vel, ullamcorper a orci. Maecenas nec fermentum leo! Duis nec dolor neque, quis rutrum libero. Pellentesque fringilla nunc in diam sodales a lacinia sem sagittis. Proin vel metus eget turpis vulputate lobortis nec id dui. Nam interdum est non lectus hendrerit tempor.\r\n\r\nMorbi ornare convasdfdsllis bibendum. Quisque blandit risus at risus porttitor ut euismod leo tempus. In hac habitasse platea dictumst. Aliquam sem eros, luctus a ornare pellentesque, tempor volutpat mi. Sed condimentum ultrices ante volutpat commodo. Cras adipiscing egestas arcu vel sodales. Praesent vel consectetur tortor. Vestibulum id augue odio amet.\r\n','2011-01-15','2011-01-29','2011-01-14 10:52:21','2011-01-14 10:52:21'),(51,'fasafd','dfsdfa','afadftrerr','2011-01-14','2011-01-27','2011-01-14 11:06:04','2011-01-14 11:06:04'),(52,'Testikampanja ilman bodya','fklwejfioj o wef wefio jweofi jwe',NULL,'2011-02-21','0000-00-00','2011-02-21 02:01:40','2011-02-21 02:01:40'),(53,'Testikampanja','Tähän lyhyt teksti kampanjasta','Pidempi selostus kampanjasta, tavoitteet yms.','2011-03-21','2011-04-30','2011-03-21 20:26:37','2011-03-21 20:26:37');
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns_comments`
--

DROP TABLE IF EXISTS `campaigns_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns_comments` (
  `campaign_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  PRIMARY KEY (`campaign_id`,`comment_id`),
  KEY `fk_campaigns_comments_comments1` (`comment_id`),
  KEY `fk_campaigns_comments_campaigns1` (`campaign_id`),
  CONSTRAINT `fk_campaigns_comments_campaigns1` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_campaigns_comments_comments1` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns_comments`
--

LOCK TABLES `campaigns_comments` WRITE;
/*!40000 ALTER TABLE `campaigns_comments` DISABLE KEYS */;
INSERT INTO `campaigns_comments` VALUES (5,55);
/*!40000 ALTER TABLE `campaigns_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns_contents`
--

DROP TABLE IF EXISTS `campaigns_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns_contents` (
  `campaign_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  PRIMARY KEY (`campaign_id`,`content_id`),
  KEY `fk_campaigns_contents_contents1` (`content_id`),
  KEY `fk_campaigns_contents_campaigns1` (`campaign_id`),
  CONSTRAINT `fk_campaigns_contents_campaigns1` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_campaigns_contents_contents1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns_contents`
--

LOCK TABLES `campaigns_contents` WRITE;
/*!40000 ALTER TABLE `campaigns_contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns_files`
--

DROP TABLE IF EXISTS `campaigns_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns_files` (
  `campaign_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  PRIMARY KEY (`campaign_id`,`file_id`),
  KEY `fk_campaigns_files_files1` (`file_id`),
  KEY `fk_campaigns_files_campaigns1` (`campaign_id`),
  CONSTRAINT `fk_campaigns_files_campaigns1` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_campaigns_files_files1` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns_files`
--

LOCK TABLES `campaigns_files` WRITE;
/*!40000 ALTER TABLE `campaigns_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns_flags`
--

DROP TABLE IF EXISTS `campaigns_flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns_flags` (
  `campaign_id` int(11) NOT NULL,
  `flag_id` int(11) NOT NULL,
  PRIMARY KEY (`campaign_id`,`flag_id`),
  KEY `fk_campaigns_flags_flags1` (`flag_id`),
  KEY `fk_campaigns_flags_campaigns1` (`campaign_id`),
  CONSTRAINT `fk_campaigns_flags_campaigns1` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_campaigns_flags_flags1` FOREIGN KEY (`flag_id`) REFERENCES `flags` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns_flags`
--

LOCK TABLES `campaigns_flags` WRITE;
/*!40000 ALTER TABLE `campaigns_flags` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns_flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns_groups`
--

DROP TABLE IF EXISTS `campaigns_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns_groups` (
  `campaign_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`campaign_id`,`group_id`),
  KEY `fk_campaigns_groups_groups1` (`group_id`),
  KEY `fk_campaigns_groups_campaigns1` (`campaign_id`),
  CONSTRAINT `fk_campaigns_groups_campaigns1` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_campaigns_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns_groups`
--

LOCK TABLES `campaigns_groups` WRITE;
/*!40000 ALTER TABLE `campaigns_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns_languages`
--

DROP TABLE IF EXISTS `campaigns_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns_languages` (
  `campaign_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  PRIMARY KEY (`campaign_id`,`language_id`),
  KEY `fk_campaigns_languages_languages1` (`language_id`),
  KEY `fk_campaigns_languages_campaigns1` (`campaign_id`),
  CONSTRAINT `fk_campaigns_languages_campaigns1` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_campaigns_languages_languages1` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns_languages`
--

LOCK TABLES `campaigns_languages` WRITE;
/*!40000 ALTER TABLE `campaigns_languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns_links`
--

DROP TABLE IF EXISTS `campaigns_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns_links` (
  `campaign_id` int(11) NOT NULL,
  `link_id` int(11) NOT NULL,
  PRIMARY KEY (`campaign_id`,`link_id`),
  KEY `fk_campaigns_links_links1` (`link_id`),
  KEY `fk_campaigns_links_campaigns1` (`campaign_id`),
  CONSTRAINT `fk_campaigns_links_campaigns1` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_campaigns_links_links1` FOREIGN KEY (`link_id`) REFERENCES `links` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns_links`
--

LOCK TABLES `campaigns_links` WRITE;
/*!40000 ALTER TABLE `campaigns_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns_personal_tags`
--

DROP TABLE IF EXISTS `campaigns_personal_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns_personal_tags` (
  `campaign_id` int(11) NOT NULL,
  `personal_tag_id` int(11) NOT NULL,
  PRIMARY KEY (`campaign_id`,`personal_tag_id`),
  KEY `fk_campaigns_personal_tags_personal_tags1` (`personal_tag_id`),
  KEY `fk_campaigns_personal_tags_campaigns1` (`campaign_id`),
  CONSTRAINT `fk_campaigns_personal_tags_campaigns1` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_campaigns_personal_tags_personal_tags1` FOREIGN KEY (`personal_tag_id`) REFERENCES `personal_tags` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns_personal_tags`
--

LOCK TABLES `campaigns_personal_tags` WRITE;
/*!40000 ALTER TABLE `campaigns_personal_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns_personal_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns_private_messages`
--

DROP TABLE IF EXISTS `campaigns_private_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns_private_messages` (
  `campaign_id` int(11) NOT NULL,
  `private_message_id` int(11) NOT NULL,
  PRIMARY KEY (`campaign_id`,`private_message_id`),
  KEY `fk_campaigns_private_messages_private_messages1` (`private_message_id`),
  KEY `fk_campaigns_private_messages_campaigns1` (`campaign_id`),
  CONSTRAINT `fk_campaigns_private_messages_campaigns1` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_campaigns_private_messages_private_messages1` FOREIGN KEY (`private_message_id`) REFERENCES `private_messages` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns_private_messages`
--

LOCK TABLES `campaigns_private_messages` WRITE;
/*!40000 ALTER TABLE `campaigns_private_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns_private_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns_ratings`
--

DROP TABLE IF EXISTS `campaigns_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns_ratings` (
  `campaign_id` int(11) NOT NULL,
  `rating_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`campaign_id`,`rating_id`),
  KEY `fk_campaigns_ratings_ratings1` (`rating_id`),
  KEY `fk_campaigns_ratings_campaigns1` (`campaign_id`),
  CONSTRAINT `fk_campaigns_ratings_campaigns1` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_campaigns_ratings_ratings1` FOREIGN KEY (`rating_id`) REFERENCES `ratings` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns_ratings`
--

LOCK TABLES `campaigns_ratings` WRITE;
/*!40000 ALTER TABLE `campaigns_ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns_related_companies`
--

DROP TABLE IF EXISTS `campaigns_related_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns_related_companies` (
  `campaign_id` int(11) NOT NULL,
  `related_company_id` int(11) NOT NULL,
  PRIMARY KEY (`campaign_id`,`related_company_id`),
  KEY `fk_campaigns_related_companies_related_companies1` (`related_company_id`),
  KEY `fk_campaigns_related_companies_campaigns1` (`campaign_id`),
  CONSTRAINT `fk_campaigns_related_companies_campaigns1` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_campaigns_related_companies_related_companies1` FOREIGN KEY (`related_company_id`) REFERENCES `related_companies` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns_related_companies`
--

LOCK TABLES `campaigns_related_companies` WRITE;
/*!40000 ALTER TABLE `campaigns_related_companies` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns_related_companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns_tags`
--

DROP TABLE IF EXISTS `campaigns_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns_tags` (
  `campaign_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`campaign_id`,`tag_id`),
  KEY `fk_campaigns_tags_tags1` (`tag_id`),
  KEY `fk_campaigns_tags_campaigns1` (`campaign_id`),
  CONSTRAINT `fk_campaigns_tags_campaigns1` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_campaigns_tags_tags1` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns_tags`
--

LOCK TABLES `campaigns_tags` WRITE;
/*!40000 ALTER TABLE `campaigns_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns_towns`
--

DROP TABLE IF EXISTS `campaigns_towns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns_towns` (
  `campaign_id` int(11) NOT NULL,
  `town_id` int(11) NOT NULL,
  PRIMARY KEY (`campaign_id`,`town_id`),
  KEY `fk_campaigns_towns_towns1` (`town_id`),
  KEY `fk_campaigns_towns_campaigns1` (`campaign_id`),
  CONSTRAINT `fk_campaigns_towns_campaigns1` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_campaigns_towns_towns1` FOREIGN KEY (`town_id`) REFERENCES `towns` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns_towns`
--

LOCK TABLES `campaigns_towns` WRITE;
/*!40000 ALTER TABLE `campaigns_towns` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns_towns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns_users`
--

DROP TABLE IF EXISTS `campaigns_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns_users` (
  `campaign_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`campaign_id`,`user_id`),
  KEY `fk_campaigns_users_users1` (`user_id`),
  KEY `fk_campaigns_users_campaigns1` (`campaign_id`),
  CONSTRAINT `fk_campaigns_users_campaigns1` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_campaigns_users_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns_users`
--

LOCK TABLES `campaigns_users` WRITE;
/*!40000 ALTER TABLE `campaigns_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `comment` text,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_comments_users1` (`user_id`),
  CONSTRAINT `fk_comments_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,4,NULL,1,2,'teee',NULL,'2010-09-10 14:00:06'),(2,4,NULL,3,4,'dffg',NULL,'2010-09-10 15:26:36'),(3,5,NULL,5,6,'hjhj',NULL,'2010-09-10 15:56:55'),(4,5,NULL,7,8,'fdfgdfgfd',NULL,'2010-09-13 13:08:08'),(5,2,NULL,9,10,'jjj',NULL,'2010-09-13 13:13:16'),(6,2,NULL,11,12,'dfdfdf',NULL,'2010-09-13 13:13:21'),(7,5,NULL,13,14,'mnmn',NULL,'2010-09-13 13:14:20'),(8,5,NULL,15,16,'vnvbnv',NULL,'2010-09-13 14:03:22'),(9,4,NULL,17,18,'ggggg',NULL,'2010-09-13 14:03:48'),(10,2,NULL,19,20,'sdfsdf',NULL,'2010-09-13 15:26:30'),(11,2,NULL,21,22,'sdfsdfsdf',NULL,'2010-09-13 15:26:33'),(12,2,NULL,23,24,'sdf',NULL,'2010-09-13 15:26:36'),(13,2,NULL,25,26,'sdf',NULL,'2010-09-13 15:26:40'),(14,2,NULL,27,28,'sdf',NULL,'2010-09-13 15:27:22'),(15,2,NULL,29,30,'fd',NULL,'2010-09-13 15:40:46'),(16,2,NULL,31,32,'dfdf',NULL,'2010-09-13 15:42:26'),(17,2,NULL,33,34,'sdf',NULL,'2010-09-13 15:42:30'),(18,2,NULL,35,36,'sdf',NULL,'2010-09-13 15:42:32'),(19,2,NULL,37,38,'sdf',NULL,'2010-09-13 15:42:34'),(20,2,NULL,39,40,'try',NULL,'2010-09-14 09:03:51'),(21,2,NULL,41,42,'rty',NULL,'2010-09-14 09:03:55'),(22,2,NULL,43,44,'rty',NULL,'2010-09-14 09:03:59'),(23,2,NULL,45,46,'rtyrt',NULL,'2010-09-14 09:04:02'),(24,2,NULL,47,48,'rty',NULL,'2010-09-14 09:04:04'),(25,8,NULL,49,50,'asdfasdfa',NULL,'2010-09-14 16:13:05'),(26,2,NULL,51,52,'sdfsdf',NULL,'2010-09-15 10:07:21'),(27,6,NULL,53,54,'Comment removed',NULL,'2010-09-17 12:35:43'),(28,6,NULL,55,56,'dfsfs',NULL,'2010-09-17 12:45:42'),(29,6,NULL,57,58,'fdsfs',NULL,'2010-09-17 12:45:44'),(30,6,NULL,59,60,'dfsf',NULL,'2010-09-17 12:45:48'),(31,6,NULL,61,62,'joodsada\n\n',NULL,'2010-09-19 20:35:23'),(32,6,NULL,63,64,'test',NULL,'2010-09-20 12:31:01'),(33,15,NULL,65,66,'Kivaa settii',NULL,'2010-09-20 13:20:56'),(34,6,NULL,67,68,'test2',NULL,'2010-09-21 00:01:26'),(35,6,NULL,69,70,'test comment',NULL,'2010-09-21 00:05:42'),(36,6,NULL,71,72,'is this online',NULL,'2010-09-21 00:05:49'),(37,6,NULL,73,74,'onko ',NULL,'2010-09-21 00:06:02'),(38,6,NULL,75,76,'miksi ei tule näkyviin',NULL,'2010-09-21 00:06:33'),(39,6,NULL,77,78,'entäs tämä',NULL,'2010-09-21 00:06:44'),(40,6,NULL,79,80,'test',NULL,'2010-09-21 00:07:59'),(41,6,NULL,81,82,'kokeillaan online',NULL,'2010-09-21 00:08:15'),(42,6,NULL,83,84,'välillä näköjään toimii',NULL,'2010-09-21 00:08:30'),(43,6,NULL,85,86,'entäs reply',NULL,'2010-09-21 00:08:44'),(44,2,NULL,87,88,'f\nf\nf\nf',NULL,'2010-09-21 13:40:10'),(45,2,NULL,89,90,'testi',NULL,'2010-09-21 13:52:18'),(46,2,NULL,91,92,'works',NULL,'2010-09-21 13:52:21'),(47,2,NULL,93,94,'f\nf\nf\n',NULL,'2010-09-21 13:52:24'),(48,2,NULL,95,96,'testi\ns\ns\ns\n\n',NULL,'2010-09-21 13:58:53'),(49,2,NULL,97,98,'sdf',NULL,'2010-09-21 13:58:55'),(50,2,NULL,99,100,'f\nf\nf\nf\nf\n',NULL,'2010-09-21 13:59:15'),(51,2,NULL,101,102,'f\nf\nf\nf\nf\nf\n',NULL,'2010-09-21 13:59:23'),(52,2,NULL,103,104,'g\ng\ng\n',NULL,'2010-09-21 13:59:36'),(53,2,NULL,105,106,'f',NULL,'2010-09-21 14:03:41'),(54,2,NULL,107,108,'f',NULL,'2010-09-21 14:04:12'),(55,2,NULL,109,110,'f',NULL,'2010-09-21 14:04:32'),(56,2,NULL,111,112,'f\nf\nf\n',NULL,'2010-09-21 14:05:58'),(57,2,NULL,113,114,'f\nf\nf\n',NULL,'2010-09-21 14:06:16'),(58,2,NULL,115,116,'f\nf\nf\nf\n',NULL,'2010-09-21 14:06:21'),(59,2,NULL,117,118,'ff\nf\nf\n',NULL,'2010-09-21 14:13:56'),(60,2,NULL,119,120,'ff\nf\nf\n',NULL,'2010-09-21 14:16:20'),(61,2,NULL,121,122,'fg fffffffffffffff f f f\nfffffffffffffff\nfffffffff ffffffffff                    ffff',NULL,'2010-09-21 14:17:10'),(62,2,NULL,123,124,'sdfsdf',NULL,'2010-09-21 14:17:50'),(63,2,NULL,125,126,'fffffff               ffffffffff\nffffff fffffffffffffff',NULL,'2010-09-21 14:17:59'),(64,2,NULL,127,128,'f\nf\nf\n',NULL,'2010-09-21 14:18:32'),(65,2,NULL,129,130,'DFDF',NULL,'2010-09-21 14:48:02'),(66,2,NULL,131,132,'ff f f f',NULL,'2010-09-21 14:48:05'),(67,2,NULL,133,134,'ff\nf\nf\nf\nf\nf\n',NULL,'2010-09-21 14:48:08'),(68,2,NULL,135,136,'f\nf\nf\nf\nf\nf\n',NULL,'2010-09-21 14:48:23'),(69,2,NULL,137,138,'ff f                   f',NULL,'2010-09-21 14:48:32'),(70,2,NULL,139,140,'ff',NULL,'2010-09-21 14:49:56'),(71,2,NULL,141,142,'f                                                                                                                                                f',NULL,'2010-09-21 14:50:13'),(72,2,NULL,143,144,'Comment removed',NULL,'2010-09-21 14:52:45'),(73,2,NULL,145,146,'sdf',NULL,'2010-09-21 14:54:44'),(75,16,NULL,149,150,'uuu jee',NULL,'2010-09-21 15:27:57'),(76,4,NULL,151,152,'wooot',NULL,'2010-09-21 15:33:24'),(77,4,NULL,153,154,'asd',NULL,'2010-09-21 15:33:27'),(78,16,NULL,155,156,'LOL RAUMA',NULL,'2010-09-21 15:43:31'),(79,16,NULL,157,158,'oikeesti paska b ryhmä',NULL,'2010-09-21 15:43:49'),(80,2,NULL,159,160,'Ensin vien, sitten vikiset!',NULL,'2010-09-21 15:44:26'),(81,2,NULL,161,162,'ghjyg',NULL,'2010-09-21 15:44:36'),(82,4,NULL,163,164,'asddd',NULL,'2010-09-21 16:56:46'),(83,4,NULL,165,166,'waattttt',NULL,'2010-09-21 16:57:29'),(84,1,NULL,167,168,':(',NULL,'2010-09-22 08:29:02'),(85,1,NULL,169,170,'Äijää',NULL,'2010-09-22 08:29:08'),(86,1,NULL,171,172,'asdf\n',NULL,'2010-09-22 08:29:14'),(91,3,NULL,181,182,'waa',NULL,'2010-09-23 11:20:09'),(92,6,NULL,183,184,'klfa',NULL,'2010-09-24 00:54:44'),(93,6,NULL,185,186,'Comment removed',NULL,'2010-09-24 00:54:58'),(94,6,NULL,187,188,'mdsadlsajd ja l',NULL,'2010-09-24 00:55:14'),(95,6,NULL,189,190,'dsad',NULL,'2010-09-24 00:55:21'),(96,6,NULL,191,192,'dsadada',NULL,'2010-09-24 00:55:23'),(97,6,NULL,193,194,'dsadsafd',NULL,'2010-09-24 00:55:26'),(98,6,NULL,195,196,'dfsadsfs',NULL,'2010-09-24 00:55:28'),(99,6,NULL,197,198,'dsanda dald nsanas',NULL,'2010-09-24 00:55:37'),(100,6,NULL,199,200,'das\n\nsdaas\nd\nasd\nas\ndsa',NULL,'2010-09-24 00:55:42'),(101,6,NULL,201,202,'Comment removed',NULL,'2010-09-24 00:55:50'),(102,6,NULL,203,204,'dsalad',NULL,'2010-09-24 00:56:02'),(103,6,NULL,205,206,'dmsasd',NULL,'2010-09-24 00:56:09'),(104,6,NULL,207,208,'kdas jdls',NULL,'2010-09-24 00:56:16'),(105,6,NULL,209,210,'tuleeko tämä',NULL,'2010-09-24 00:56:30'),(106,6,NULL,211,212,'djd saa',NULL,'2010-09-24 01:01:42'),(107,6,NULL,213,214,'dsadja',NULL,'2010-09-24 01:03:14'),(108,6,NULL,215,216,'ldsjda',NULL,'2010-09-24 01:04:44'),(109,6,NULL,217,218,'dsja djas',NULL,'2010-09-24 01:04:51'),(110,6,NULL,219,220,'dsaj ala',NULL,'2010-09-24 01:08:52'),(112,19,NULL,223,224,'test',NULL,'2010-09-24 08:13:27'),(113,19,NULL,225,226,'waaaa',NULL,'2010-09-24 08:13:33'),(114,3,NULL,227,228,'asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd',NULL,'2010-09-24 10:08:23'),(115,3,NULL,229,230,'zcx',NULL,'2010-09-24 10:09:35'),(116,3,NULL,231,232,'f\ndfsdfsdfsdf sdfs dfsd fds\nf dsf\n sdf\nsdfdsfsdhfhjdgjgjhffgjhfjghkghjghjghjghjghjghjghjghjhgjghjhgjghjsadjasdkjdkjgdskjgdkjdsjjklgdsjklsdgjklgsdjklgdsjklgsndsdn gngdsmn dgsmn gdsndgsndgnssdgdgsjdgsöljkrsjölkrkömslrn, srn khrmhgdgsdgff\ndfsdfsdfsdf sdfs dfsd fds\nf dsf\n sdf\nsdfdsfsdhfhjdgjgjhffgjhfjghkghjghjghjghjghjghjghjghjhgjghjhgjghjsadjasdkjdkjgdskjgdkjdsjjklgdsjklsdgjklgsdjklgdsjklgsndsdn gngdsmn dgsmn gdsndgsndgnssdgdgsjdgsöljkrsjölkrkömslrn, srn khrmhgdgsdgff\ndfsdfsdfsdf sdfs dfsd fds\nf dsf\n sdf\nsdfdsfsdhfhjdgjgjhffgjhfjghkghjghjghjghjghjghjghjghjhgjghjhgjghjsadjasdkjdkjgdskjgdkjdsjjklgdsjklsdgjklgsdjklgdsjklgsndsdn gngdsmn dgsmn gdsndgsndgnssdgdgsjdgsöljkrsjölkrkömslrn, srn khrmhgdgsdgff\ndfsdfsdfsdf sdfs dfsd fds\nf dsf\n sdf\nsdfdsfsdhfhjdgjgjhffgjhfjghkghjghjghjghjghjghjghjghjhgjghjhgjghjsadjasdkjdkjgdskjgdkjdsjjklgdsjklsdgjklgsdjklgdsjklgsndsdn gngdsmn dgsmn gdsndgsndgnssdgdgsjdgsöljkrsjölkrkömslrn, srn khrmhgdgsdgfasdasdasdasghfhtgjuygkyikuljiliurigh89nbn84b90b4j985rj890e5gy9u0',NULL,'2010-09-24 10:28:01'),(117,3,NULL,233,234,'m',NULL,'2010-09-24 10:28:22'),(118,3,NULL,235,236,'Comment removed',NULL,'2010-09-24 10:47:00'),(119,3,NULL,237,238,'adasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  sadadasdad a das  ',NULL,'2010-09-24 10:47:25'),(120,9,NULL,239,240,'jhgkjgj',NULL,'2010-09-25 21:53:12'),(121,2,NULL,241,242,'asdasd',NULL,'2010-09-27 09:13:19'),(122,2,NULL,243,244,'ert',NULL,'2010-09-27 09:18:46'),(123,2,NULL,245,246,'ertertertdrgdfgdfgdsfgsdfgdfg',NULL,'2010-09-27 09:19:21'),(124,3,NULL,247,248,'gghghfhfhfghfhfghfghfgh sad asd sad asd  asdsad dsa sda asdassad asdasd asd asdasdasd asdasdasdasdgghghfhfhfghfhfghfghfgh sad asd sad asd  asdsad dsa sda asdassad asdasd asd asdasdasd asdasdasdasdgghghfhfhfghfhfghfghfgh sad asd sad asd  asdsad dsa sda asdassad asdasd asd asdasdasd asdasdasdasdgghghfhfhfghfhfghfghfgh sad asd sad asd  asdsad dsa sda asdassad asdasd asd asdasdasd asdasdasdasdgghghfhfhfghfhfghfghfgh sad asd sad asd  asdsad dsa sda asdassad asdasd asd asdasdasd asdasdasdasdgghghfhfhfghfhfghfghfgh sad asd sad asd  asdsad dsa sda asdassad asdasd asd asdasdasd asdasdasdasdgghghfhfhfghfhfghfghfgh sad asd sad asd  asdsad dsa sda asdassad asdasd asd asdasdasd asdasdasdasdgghghfhfhfghfhfghfghfgh sad asd sad asd  asdsad dsa sda asdassad asdasd asd asdasdasd asdasdasdasdgghghfhfhfghfhfghfghfgh sad asd sad asd  asdsad dsa sda asdassad asdasd asd asdasdasd asdasdasdasdgghghfhfhfghfhfghfghfgh sad asd sad asd  asdsad dsa sda asdassad asdasd asd asdasdasd asdasdasdasdgghghfhfhfghfhfghfgh',NULL,'2010-09-27 11:26:44'),(125,3,NULL,249,250,'fgdgdfgdfgdfgdfgdgdfg',NULL,'2010-09-27 11:37:19'),(126,3,NULL,251,252,'asd',NULL,'2010-09-27 11:37:34'),(127,3,NULL,253,254,'sdfsdf',NULL,'2010-09-27 11:38:17'),(128,3,NULL,255,256,'hghgnbvcbvnvb',NULL,'2010-09-27 11:38:21'),(129,3,NULL,257,258,'ghgh',NULL,'2010-09-27 11:43:39'),(130,3,NULL,259,260,' sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd   sdfsdfsdfsd    sdfs',NULL,'2010-09-27 11:47:32'),(131,3,NULL,261,262,'sdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf sdf sdfsdf sdsdfsdfsdf s',NULL,'2010-09-27 11:48:37'),(132,3,NULL,263,264,' asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd  asdasdasd',NULL,'2010-09-27 11:50:21'),(133,20,NULL,265,266,'a',NULL,'2010-09-27 14:31:44'),(134,20,NULL,267,268,'a',NULL,'2010-09-27 14:31:45'),(135,20,NULL,269,270,'aa',NULL,'2010-09-27 14:31:48'),(136,20,NULL,271,272,'le',NULL,'2010-09-27 14:35:13'),(137,20,NULL,273,274,'testi',NULL,'2010-09-27 14:37:03'),(138,20,NULL,275,276,'kikklei',NULL,'2010-09-27 15:11:07'),(139,2,NULL,277,278,'sdf',NULL,'2010-09-27 15:15:06'),(140,2,NULL,279,280,'asdfasdf',NULL,'2010-09-27 15:29:11'),(141,2,NULL,281,282,'sdfadsf',NULL,'2010-09-27 15:29:13'),(142,20,NULL,283,284,'terve',NULL,'2010-09-27 15:39:59'),(143,20,NULL,285,286,'moi',NULL,'2010-09-27 15:47:58'),(144,20,NULL,287,288,'ELELLEEEEdfdfds\nasdfasd\nfasd\nfasdfsdf',NULL,'2010-09-28 08:37:23'),(145,2,NULL,289,290,'f',NULL,'2010-09-28 09:48:50'),(146,2,NULL,291,292,'f',NULL,'2010-09-28 09:55:59'),(147,6,NULL,293,294,'test',NULL,'2010-09-29 23:03:50'),(148,6,NULL,295,296,'toinen',NULL,'2010-09-29 23:03:54'),(150,6,NULL,299,300,'kljsd adf sfjdsfsd fhsd hf dsjhf sdj fjksdh fkjsdh fksdhfs',NULL,'2010-09-30 11:36:26'),(151,6,NULL,301,302,'tonen testi',NULL,'2010-09-30 11:36:42'),(153,6,NULL,305,306,'jh h kdfs',NULL,'2010-09-30 11:51:38'),(154,6,NULL,307,308,'tomii hienosto',NULL,'2010-09-30 11:51:47'),(155,2,NULL,309,310,'ertgewrgtdfg',NULL,'2010-09-30 16:27:41'),(156,2,NULL,311,312,'eqwrwerqwerqwer\n\nasdfasdf\nasdf\nasdf\n\nasd\nf\nasdf\n',NULL,'2010-09-30 16:27:50'),(157,2,NULL,313,314,'afsdfasdfasdfasdf',NULL,'2010-09-30 16:28:03'),(160,7,NULL,319,320,'Kommentti',NULL,'2010-09-30 16:54:54'),(161,7,NULL,321,322,'toinen kommentti',NULL,'2010-09-30 16:55:01'),(162,6,NULL,323,324,'joo joo',NULL,'2010-10-01 00:53:53'),(163,3,NULL,325,326,'123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n99999\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n123\n\n\n\n\n\n',NULL,'2010-10-01 14:04:13'),(164,3,NULL,327,328,'yj\n\njkjk\n\n\njkjkjk',NULL,'2010-10-01 14:06:46'),(165,3,NULL,329,330,'123\n\n\n\n123\n\n\n\n123\n\n\n\n\n\n123\n\n\n\nasd',NULL,'2010-10-01 14:10:49'),(167,2,NULL,333,334,'asdfasdf',NULL,'2010-10-08 09:12:47'),(168,2,NULL,335,336,'adsfasdf',NULL,'2010-10-08 09:12:49'),(169,2,NULL,337,338,'ffffffffffffsdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdff',NULL,'2010-10-08 09:12:59'),(170,2,NULL,339,340,'asdfasdfasdfasdfasdf',NULL,'2010-10-08 09:13:03'),(171,2,NULL,341,342,'fgggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg',NULL,'2010-10-08 15:10:24'),(172,2,NULL,343,344,'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff',NULL,'2010-10-08 15:10:57'),(173,2,NULL,345,346,'wwwwwwwwwwwwwwwwwwwwwwwwwQWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW',NULL,'2010-10-08 15:12:20'),(174,2,NULL,347,348,'dsf',NULL,'2010-10-12 15:20:10'),(175,2,NULL,349,350,'www.google.fi',NULL,'2010-10-13 13:46:09'),(176,2,NULL,351,352,'kekek momomo www.google.fi asdfasdf',NULL,'2010-10-13 13:46:16'),(177,2,NULL,353,354,'kekekekekekek lololl http://www.google.fi',NULL,'2010-10-13 13:46:24'),(178,2,NULL,355,356,'http://dev.massidea.org/~sami/en/view/123',NULL,'2010-10-13 13:46:30'),(179,2,NULL,357,358,'http://www.youtube.com/watch?v=u1zgFlCw8Aw&feature=player_embedded',NULL,'2010-10-13 13:46:37'),(180,6,NULL,359,360,'jklsdfjklsdf',NULL,'2010-10-14 13:40:43'),(181,6,NULL,361,362,'jklfd slkf',NULL,'2010-10-14 13:40:46'),(182,6,NULL,363,364,'fjds kljf lsdjfl ',NULL,'2010-10-14 13:40:54'),(183,6,NULL,365,366,'joojoo',NULL,'2010-10-14 13:41:08'),(184,6,NULL,367,368,'eie ei',NULL,'2010-10-14 13:41:33'),(185,6,NULL,369,370,'dffsd',NULL,'2010-10-14 13:41:50'),(186,6,NULL,371,372,'ds ad',NULL,'2010-10-15 00:26:22'),(187,6,NULL,373,374,'ds ada',NULL,'2010-10-15 00:26:32'),(188,6,NULL,375,376,'dmsa da',NULL,'2010-10-15 00:26:37'),(189,6,NULL,377,378,'dsaöd',NULL,'2010-10-15 00:26:44'),(190,6,NULL,379,380,'minne',NULL,'2010-10-15 00:36:03'),(191,6,NULL,381,382,'http://minne',NULL,'2010-10-15 00:36:14'),(192,6,NULL,383,384,'asdfj lsdjlfdsj #joo kldfsj lfdsjdfjsl',NULL,'2010-10-19 13:31:13'),(193,6,NULL,385,386,'#joo jfdjhsd fsd @sami hdfhs fksdkf',NULL,'2010-10-19 13:32:01'),(194,1,NULL,387,388,'hahmamahaam',NULL,'2010-10-19 14:01:33'),(195,6,NULL,389,390,'dfsadas',NULL,'2010-10-19 14:02:09'),(196,6,NULL,391,392,'sajdlsa',NULL,'2010-10-19 14:02:28'),(197,6,NULL,393,394,'kowe',NULL,'2010-10-19 14:06:09'),(198,6,NULL,395,396,'joo',NULL,'2010-10-19 14:06:37'),(199,1,NULL,397,398,'TERGGUI! ',NULL,'2010-10-19 14:14:52'),(200,2,NULL,399,400,'adsf',NULL,'2010-10-20 08:40:00'),(201,14,NULL,401,402,'sdf',NULL,'2010-10-20 08:40:25'),(202,2,NULL,403,404,'sdf',NULL,'2010-10-20 08:40:29'),(203,2,NULL,405,406,'sdf',NULL,'2010-10-20 08:42:44'),(204,2,NULL,407,408,'afds',NULL,'2010-10-20 08:46:10'),(205,2,NULL,409,410,'kekekeke',NULL,'2010-10-20 08:47:41'),(206,2,NULL,411,412,'sdf',NULL,'2010-10-20 08:48:29'),(207,2,NULL,413,414,'aaa',NULL,'2010-10-20 08:49:19'),(208,2,NULL,415,416,'bbb',NULL,'2010-10-20 08:50:08'),(209,2,NULL,417,418,'ccc',NULL,'2010-10-20 08:50:21'),(210,2,NULL,419,420,'kukukuk',NULL,'2010-10-20 08:50:30'),(211,2,NULL,421,422,'567',NULL,'2010-10-20 08:50:41'),(212,2,NULL,423,424,'6',NULL,'2010-10-20 08:51:06'),(213,2,NULL,425,426,'sdf',NULL,'2010-10-20 08:56:21'),(214,2,NULL,427,428,'sdf',NULL,'2010-10-20 08:56:31'),(215,2,NULL,429,430,'sdf',NULL,'2010-10-20 08:56:44'),(216,2,NULL,431,432,'aaa',NULL,'2010-10-20 08:56:55'),(217,6,NULL,433,434,'tets',NULL,'2010-10-20 09:39:41'),(218,6,NULL,435,436,'ksdksda',NULL,'2010-10-20 12:23:26'),(219,6,NULL,437,438,'dsa',NULL,'2010-10-20 12:23:53'),(220,6,NULL,439,440,'das',NULL,'2010-10-20 20:00:03'),(221,6,NULL,441,442,'dsa',NULL,'2010-10-20 20:00:07'),(222,6,NULL,443,444,'fkldsf',NULL,'2010-10-21 10:50:34'),(223,6,NULL,445,446,'fmdasnfsdfsd',NULL,'2010-10-21 10:50:53'),(224,7,NULL,447,448,'Ensimmäinen kommentti Kyamk ryhmään.',NULL,'2010-10-22 18:05:27'),(225,7,NULL,449,450,'Ja toinen kommentti Kyamk ryhmään.',NULL,'2010-10-22 18:07:17'),(226,7,NULL,451,452,'Vastaus toiseen kommenttiin Kyamk ryhmässä.',NULL,'2010-10-22 18:07:34'),(227,7,NULL,453,454,'Erittäin pitkä kommentti.Proin velit erat; egestas quis placerat a, suscipit vitae leo. Integer massa metus, pharetra non venenatis vitae, cursus id turpis.\n\nPraesent a tortor urna, at pulvinar felis! Mauris et lectus adipiscing libero scelerisque egestas. Fusce quis ultricies leo. Vivamus dapibus laoreet condimentum. Praesent massa sem, dapibus ac congue a, semper nec leo. Phasellus sit amet imperdiet tellus. Praesent eu erat sit amet leo scelerisque sodales. In et consectetur mauris. Proin suscipit posuere molestie.\n\nDonec rutrum iaculis arcu sit amet porttitor. Nam tempor porta quam, in feugiat velit molestie pharetra? Nam eros enim, volutpat adipiscing commodo a, tincidunt ac neque. Morbi suscipit ultrices mauris non laoreet! Pellentesque in interdum dui. Cras condimentum enim ut velit porttitor venenatis!\n\nDonec rutrum iaculis arcu sit amet porttitor. Nam tempor porta quam, in feugiat velit molestie pharetra? Nam eros enim, volutpat adipiscing commodo a, tincidunt ac neque. Morbi ',NULL,'2010-10-24 11:23:54'),(228,4,NULL,455,456,'lolss',NULL,'2010-10-25 10:38:17'),(229,6,NULL,457,458,'dsaökda',NULL,'2010-11-01 11:01:22'),(230,6,NULL,459,460,'dksaöd',NULL,'2010-11-01 11:01:41'),(231,6,NULL,461,462,'tesi',NULL,'2010-11-01 11:34:54'),(232,6,NULL,463,464,'toinen koe',NULL,'2010-11-01 11:34:58'),(233,6,NULL,465,466,'montako tulee',NULL,'2010-11-01 11:35:09'),(234,6,NULL,467,468,'siis kuinka monta',NULL,'2010-11-01 11:35:16'),(235,4,NULL,469,470,'wat',NULL,'2010-11-01 14:42:59'),(236,4,NULL,471,472,'asd',NULL,'2010-11-01 15:41:50'),(237,4,NULL,473,474,'lol',NULL,'2010-11-01 15:46:05'),(238,4,NULL,475,476,'asd',NULL,'2010-11-01 15:46:18'),(239,4,NULL,477,478,'asdff',NULL,'2010-11-01 15:46:43'),(240,4,NULL,479,480,'a',NULL,'2010-11-01 15:54:53'),(241,4,NULL,481,482,'dsa',NULL,'2010-11-01 15:59:04'),(242,4,NULL,483,484,'asd',NULL,'2010-11-02 13:30:31'),(243,4,NULL,485,486,'wat',NULL,'2010-11-02 13:31:24'),(244,4,NULL,487,488,'waaa',NULL,'2010-11-03 11:32:32'),(245,4,NULL,489,490,'asdasd',NULL,'2010-11-03 13:38:59'),(246,4,NULL,491,492,'aaaa',NULL,'2010-11-03 13:40:16'),(247,6,NULL,493,494,'dfsfd',NULL,'2010-11-09 10:19:59'),(248,6,NULL,495,496,'kfdsf',NULL,'2010-11-09 10:20:11'),(249,6,NULL,497,498,'mds.amsd.a',NULL,'2010-11-09 10:20:30'),(250,6,NULL,499,500,'http://www.youtube.com/watch?v=SworfQZdkf4&feature=grec_index',NULL,'2010-11-25 11:43:24'),(251,7,NULL,501,502,'Etiam venenatis ornare tellus non metus.\n',NULL,'2011-02-14 22:45:08'),(252,7,NULL,503,504,'Cras turpis justo, mattis posuere metus.\n',NULL,'2011-02-14 22:45:15'),(253,7,NULL,505,506,'Phasellus sed quam in risus turpis duis.\n',NULL,'2011-02-14 22:45:20'),(254,7,NULL,507,508,'Duis ut odio ut urna scelerisque nullam.\n',NULL,'2011-02-14 22:45:24'),(255,7,NULL,509,510,'Vestibulum eget mauris eu lectus nullam.\n',NULL,'2011-02-14 22:45:33'),(256,7,NULL,511,512,'Integer elit eros, lobortis quis nullam.\n',NULL,'2011-02-14 22:45:39'),(257,7,NULL,513,514,'Aliquam erat volutpat. Maecenas posuere.\n',NULL,'2011-02-14 22:45:43'),(258,7,NULL,515,516,'Vivamus bibendum; nulla aliquet posuere.\n',NULL,'2011-02-14 22:45:48'),(259,7,NULL,517,518,'Maecenas a diam eget diam dictum nullam.\n',NULL,'2011-02-14 22:45:51'),(260,7,NULL,519,520,'Class aptent taciti sociosqu ad posuere.\n',NULL,'2011-02-14 22:45:56'),(261,7,NULL,521,522,'Curabitur vel est massa aenean suscipit.\n',NULL,'2011-02-14 22:46:02'),(262,7,NULL,523,524,'Sed fermentum venenatis leo, ac posuere.\n',NULL,'2011-02-14 22:46:09'),(263,7,NULL,525,526,'Nulla in odio massa. Proin quis posuere.\n',NULL,'2011-02-14 22:46:14'),(264,7,NULL,527,528,'Nulla a semper tellus. Aliquam ac metus.\n',NULL,'2011-02-14 22:46:20'),(265,7,NULL,529,530,'Mauris diam dolor, faucibus quis nullam.\n',NULL,'2011-02-14 22:46:26'),(266,7,NULL,531,532,'Integer non sem ac velit sagittis metus.\n',NULL,'2011-02-14 22:46:31'),(267,7,NULL,533,534,'Sed dictum, turpis eget lobortis nullam.\n',NULL,'2011-02-14 22:46:37'),(268,22,NULL,535,536,'fsdfewfwe',NULL,'2011-02-14 22:48:34'),(269,22,NULL,537,538,'fewfwefwe',NULL,'2011-02-14 22:48:40'),(270,22,NULL,539,540,'fwefewfwe',NULL,'2011-02-14 22:48:45'),(271,22,NULL,541,542,'fweaffe',NULL,'2011-02-14 22:48:49'),(272,7,NULL,543,544,'fds',NULL,'2011-02-14 23:08:07'),(273,7,NULL,545,546,'fweg',NULL,'2011-02-14 23:08:09'),(274,7,NULL,547,548,'grerg',NULL,'2011-02-14 23:08:10'),(275,7,NULL,549,550,'reasga',NULL,'2011-02-14 23:08:12'),(276,7,NULL,551,552,'greggasr',NULL,'2011-02-14 23:08:15'),(277,7,NULL,553,554,'rgaregre',NULL,'2011-02-14 23:08:17'),(278,7,NULL,555,556,'rgerereg',NULL,'2011-02-14 23:08:19'),(279,7,NULL,557,558,'grseg',NULL,'2011-02-14 23:08:21'),(280,7,NULL,559,560,'gsrg',NULL,'2011-02-14 23:08:24'),(281,7,NULL,561,562,'gsreg',NULL,'2011-02-14 23:08:28'),(282,7,NULL,563,564,'gsgrreg',NULL,'2011-02-14 23:08:33'),(283,18,NULL,565,566,'gfd',NULL,'2011-05-30 14:18:21'),(284,18,NULL,567,568,'jjkhjkh',NULL,'2011-05-30 14:18:46');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments_contents`
--

DROP TABLE IF EXISTS `comments_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments_contents` (
  `comment_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`,`content_id`),
  KEY `fk_comments_contents_contents1` (`content_id`),
  KEY `fk_comments_contents_comments1` (`comment_id`),
  CONSTRAINT `fk_comments_contents_comments1` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_comments_contents_contents1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments_contents`
--

LOCK TABLES `comments_contents` WRITE;
/*!40000 ALTER TABLE `comments_contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments_groups`
--

DROP TABLE IF EXISTS `comments_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments_groups` (
  `comment_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`,`group_id`),
  KEY `fk_comments_groups_groups1` (`group_id`),
  KEY `fk_comments_groups_comments1` (`comment_id`),
  CONSTRAINT `fk_comments_groups_comments1` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_comments_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments_groups`
--

LOCK TABLES `comments_groups` WRITE;
/*!40000 ALTER TABLE `comments_groups` DISABLE KEYS */;
INSERT INTO `comments_groups` VALUES (54,2),(272,2),(273,2),(274,2),(275,2),(276,2),(277,2),(278,2),(279,2),(280,2),(281,2),(282,2),(27,3),(171,3),(231,3),(232,3),(233,3),(234,3),(31,4),(79,5),(80,5),(84,5),(85,5),(86,5),(147,20),(148,20),(160,21),(161,21),(224,29),(225,29),(226,29),(227,29),(199,42);
/*!40000 ALTER TABLE `comments_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments_profiles`
--

DROP TABLE IF EXISTS `comments_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments_profiles` (
  `comment_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`,`profile_id`),
  KEY `fk_comments_profiles_profiles1` (`profile_id`),
  KEY `fk_comments_profiles_comments1` (`comment_id`),
  CONSTRAINT `fk_comments_profiles_comments1` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_comments_profiles_profiles1` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments_profiles`
--

LOCK TABLES `comments_profiles` WRITE;
/*!40000 ALTER TABLE `comments_profiles` DISABLE KEYS */;
INSERT INTO `comments_profiles` VALUES (75,1),(194,1),(59,2),(60,2),(61,2),(62,2),(63,2),(122,2),(123,2),(174,2),(91,3),(124,3),(125,3),(126,3),(127,3),(128,3),(129,3),(130,3),(131,3),(132,3),(45,6),(46,6),(47,6),(48,6),(49,6),(50,6),(51,6),(53,6),(110,6),(153,6),(154,6),(162,6),(78,15),(81,15),(143,20);
/*!40000 ALTER TABLE `comments_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments_users`
--

DROP TABLE IF EXISTS `comments_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments_users` (
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`,`user_id`),
  KEY `fk_comments_users_users1` (`user_id`),
  KEY `fk_comments_users_comments1` (`comment_id`),
  CONSTRAINT `fk_comments_users_comments1` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_comments_users_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments_users`
--

LOCK TABLES `comments_users` WRITE;
/*!40000 ALTER TABLE `comments_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contents`
--

DROP TABLE IF EXISTS `contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` enum('challenge','idea','vision') DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `lead` text,
  `body` text,
  `references` text,
  `published` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Has content published?',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `data` text,
  `user_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_contents_users1` (`user_id`),
  KEY `fk_contents_languages1` (`language_id`),
  CONSTRAINT `fk_contents_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_contents_languages1` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents`
--

LOCK TABLES `contents` WRITE;
/*!40000 ALTER TABLE `contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contents_files`
--

DROP TABLE IF EXISTS `contents_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contents_files` (
  `content_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  PRIMARY KEY (`content_id`,`file_id`),
  KEY `fk_contents_files_files1` (`file_id`),
  KEY `fk_contents_files_contents1` (`content_id`),
  CONSTRAINT `fk_contents_files_contents1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_contents_files_files1` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents_files`
--

LOCK TABLES `contents_files` WRITE;
/*!40000 ALTER TABLE `contents_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `contents_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contents_flags`
--

DROP TABLE IF EXISTS `contents_flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contents_flags` (
  `content_id` int(11) NOT NULL,
  `flag_id` int(11) NOT NULL,
  PRIMARY KEY (`content_id`,`flag_id`),
  KEY `fk_contents_flags_flags1` (`flag_id`),
  KEY `fk_contents_flags_contents1` (`content_id`),
  CONSTRAINT `fk_contents_flags_contents1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_contents_flags_flags1` FOREIGN KEY (`flag_id`) REFERENCES `flags` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents_flags`
--

LOCK TABLES `contents_flags` WRITE;
/*!40000 ALTER TABLE `contents_flags` DISABLE KEYS */;
/*!40000 ALTER TABLE `contents_flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contents_groups`
--

DROP TABLE IF EXISTS `contents_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contents_groups` (
  `content_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`content_id`,`group_id`),
  KEY `fk_contents_groups_groups1` (`group_id`),
  KEY `fk_contents_groups_contents1` (`content_id`),
  CONSTRAINT `fk_contents_groups_contents1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_contents_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents_groups`
--

LOCK TABLES `contents_groups` WRITE;
/*!40000 ALTER TABLE `contents_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `contents_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contents_links`
--

DROP TABLE IF EXISTS `contents_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contents_links` (
  `content_id` int(11) NOT NULL,
  `link_id` int(11) NOT NULL,
  PRIMARY KEY (`content_id`,`link_id`),
  KEY `fk_contents_links_links1` (`link_id`),
  KEY `fk_contents_links_contents1` (`content_id`),
  CONSTRAINT `fk_contents_links_contents1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_contents_links_links1` FOREIGN KEY (`link_id`) REFERENCES `links` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents_links`
--

LOCK TABLES `contents_links` WRITE;
/*!40000 ALTER TABLE `contents_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `contents_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contents_personal_tags`
--

DROP TABLE IF EXISTS `contents_personal_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contents_personal_tags` (
  `content_id` int(11) NOT NULL,
  `personal_tag_id` int(11) NOT NULL,
  PRIMARY KEY (`content_id`,`personal_tag_id`),
  KEY `fk_contents_personal_tags_personal_tags1` (`personal_tag_id`),
  KEY `fk_contents_personal_tags_contents1` (`content_id`),
  CONSTRAINT `fk_contents_personal_tags_contents1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_contents_personal_tags_personal_tags1` FOREIGN KEY (`personal_tag_id`) REFERENCES `personal_tags` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents_personal_tags`
--

LOCK TABLES `contents_personal_tags` WRITE;
/*!40000 ALTER TABLE `contents_personal_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `contents_personal_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contents_ratings`
--

DROP TABLE IF EXISTS `contents_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contents_ratings` (
  `content_id` int(11) NOT NULL,
  `rating_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`content_id`,`rating_id`),
  KEY `fk_contents_ratings_ratings1` (`rating_id`),
  KEY `fk_contents_ratings_contents1` (`content_id`),
  CONSTRAINT `fk_contents_ratings_contents1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_contents_ratings_ratings1` FOREIGN KEY (`rating_id`) REFERENCES `ratings` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents_ratings`
--

LOCK TABLES `contents_ratings` WRITE;
/*!40000 ALTER TABLE `contents_ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `contents_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contents_related_companies`
--

DROP TABLE IF EXISTS `contents_related_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contents_related_companies` (
  `content_id` int(11) NOT NULL,
  `related_company_id` int(11) NOT NULL,
  PRIMARY KEY (`content_id`,`related_company_id`),
  KEY `fk_contents_related_companies_related_companies1` (`related_company_id`),
  KEY `fk_contents_related_companies_contents1` (`content_id`),
  CONSTRAINT `fk_contents_related_companies_contents1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_contents_related_companies_related_companies1` FOREIGN KEY (`related_company_id`) REFERENCES `related_companies` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents_related_companies`
--

LOCK TABLES `contents_related_companies` WRITE;
/*!40000 ALTER TABLE `contents_related_companies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contents_related_companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contents_tags`
--

DROP TABLE IF EXISTS `contents_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contents_tags` (
  `content_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`content_id`,`tag_id`),
  KEY `fk_contents_tags_tags1` (`tag_id`),
  KEY `fk_contents_tags_contents1` (`content_id`),
  CONSTRAINT `fk_contents_tags_contents1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_contents_tags_tags1` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents_tags`
--

LOCK TABLES `contents_tags` WRITE;
/*!40000 ALTER TABLE `contents_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `contents_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contents_towns`
--

DROP TABLE IF EXISTS `contents_towns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contents_towns` (
  `content_id` int(11) NOT NULL,
  `town_id` int(11) NOT NULL,
  PRIMARY KEY (`content_id`,`town_id`),
  KEY `fk_contents_towns_towns1` (`town_id`),
  KEY `fk_contents_towns_contents1` (`content_id`),
  CONSTRAINT `fk_contents_towns_contents1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_contents_towns_towns1` FOREIGN KEY (`town_id`) REFERENCES `towns` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents_towns`
--

LOCK TABLES `contents_towns` WRITE;
/*!40000 ALTER TABLE `contents_towns` DISABLE KEYS */;
/*!40000 ALTER TABLE `contents_towns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contents_users`
--

DROP TABLE IF EXISTS `contents_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contents_users` (
  `content_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`content_id`,`user_id`),
  KEY `fk_contents_users_users1` (`user_id`),
  KEY `fk_contents_users_contents1` (`content_id`),
  CONSTRAINT `fk_contents_users_contents1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_contents_users_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents_users`
--

LOCK TABLES `contents_users` WRITE;
/*!40000 ALTER TABLE `contents_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `contents_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `iso3166` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afghanistan','AF'),(2,'Albania','AL'),(3,'Algeria','DZ'),(4,'American Samoa','AS'),(5,'Andorra','AD'),(6,'Angola','AO'),(7,'Anguilla','AI'),(8,'Antarctica','AQ'),(9,'Antigua and Barbuda','AG'),(10,'Argentina','AR'),(11,'Armenia','AM'),(12,'Aruba','AW'),(13,'Australia','AU'),(14,'Austria','AT'),(15,'Azerbaijan','AZ'),(16,'Bahamas','BS'),(17,'Bahrain','BH'),(18,'Bangladesh','BD'),(19,'Barbados','BB'),(20,'Belarus','BY'),(21,'Belgium','BE'),(22,'Belize','BZ'),(23,'Benin','BJ'),(24,'Bermuda','BM'),(25,'Bhutan','BT'),(26,'Bolivia','BO'),(27,'Bosnia and Herzegovina','BA'),(28,'Botswana','BW'),(29,'Bouvet Island','BV'),(30,'Brazil','BR'),(31,'British Indian Ocean Territory','IO'),(32,'Brunei Darussalam','BN'),(33,'Bulgaria','BG'),(34,'Burkina Faso','BF'),(35,'Burundi','BI'),(36,'Cambodia','KH'),(37,'Cameroon','CM'),(38,'Canada','CA'),(39,'Cape Verde','CV'),(40,'Cayman Islands','KY'),(41,'Central African Republic','CF'),(42,'Chad','TD'),(43,'Chile','CL'),(44,'China','CN'),(45,'Christmas Island','CX'),(46,'Cocos (Keeling) Islands','CC'),(47,'Colombia','CO'),(48,'Comoros','KM'),(49,'Congo','CG'),(50,'Congo, the Democratic Republic of the','CD'),(51,'Cook Islands','CK'),(52,'Costa Rica','CR'),(53,'Croatia','HR'),(54,'Cuba','CU'),(55,'Cyprus','CY'),(56,'Czech Republic','CZ'),(57,'Denmark','DK'),(58,'Djibouti','DJ'),(59,'Dominica','DM'),(60,'Dominican Republic','DO'),(61,'Ecuador','EC'),(62,'Egypt','EG'),(63,'El Salvador','SV'),(64,'Equatorial Guinea','GQ'),(65,'Eritrea','ER'),(66,'Estonia','EE'),(67,'Ethiopia','ET'),(68,'Falkland Islands (Malvinas)','FK'),(69,'Faroe Islands','FO'),(70,'Fiji','FJ'),(71,'Finland','FI'),(72,'France','FR'),(73,'French Guiana','GF'),(74,'French Polynesia','PF'),(75,'French Southern Territories','TF'),(76,'Gabon','GA'),(77,'Gambia','GM'),(78,'Georgia','GE'),(79,'Germany','DE'),(80,'Ghana','GH'),(81,'Gibraltar','GI'),(82,'Greece','GR'),(83,'Greenland','GL'),(84,'Grenada','GD'),(85,'Guadeloupe','GP'),(86,'Guam','GU'),(87,'Guatemala','GT'),(88,'Guinea','GN'),(89,'Guinea-Bissau','GW'),(90,'Guyana','GY'),(91,'Haiti','HT'),(92,'Heard Island and Mcdonald Islands','HM'),(93,'Holy See (Vatican City State)','VA'),(94,'Honduras','HN'),(95,'Hong Kong','HK'),(96,'Hungary','HU'),(97,'Iceland','IS'),(98,'India','IN'),(99,'Indonesia','ID'),(100,'Iran, Islamic Republic of','IR'),(101,'Iraq','IQ'),(102,'Ireland','IE'),(103,'Israel','IL'),(104,'Italy','IT'),(105,'Jamaica','JM'),(106,'Japan','JP'),(107,'Jordan','JO'),(108,'Kazakhstan','KZ'),(109,'Kenya','KE'),(110,'Kiribati','KI'),(111,'Korea, Republic of','KR'),(112,'Kuwait','KW'),(113,'Kyrgyzstan','KG'),(114,'Latvia','LV'),(115,'Lebanon','LB'),(116,'Lesotho','LS'),(117,'Liberia','LR'),(118,'Libyan Arab Jamahiriya','LY'),(119,'Liechtenstein','LI'),(120,'Lithuania','LT'),(121,'Luxembourg','LU'),(122,'Macao','MO'),(123,'Macedonia, the Former Yugoslav Republic of','MK'),(124,'Madagascar','MG'),(125,'Malawi','MW'),(126,'Malaysia','MY'),(127,'Maldives','MV'),(128,'Mali','ML'),(129,'Malta','MT'),(130,'Marshall Islands','MH'),(131,'Martinique','MQ'),(132,'Mauritania','MR'),(133,'Mauritius','MU'),(134,'Mayotte','YT'),(135,'Mexico','MX'),(136,'Micronesia, Federated States of','FM'),(137,'Moldova, Republic of','MD'),(138,'Monaco','MC'),(139,'Mongolia','MN'),(140,'Montserrat','MS'),(141,'Morocco','MA'),(142,'Mozambique','MZ'),(143,'Myanmar','MM'),(144,'Namibia','NA'),(145,'Nauru','NR'),(146,'Nepal','NP'),(147,'Netherlands','NL'),(148,'Netherlands Antilles','AN'),(149,'New Caledonia','NC'),(150,'New Zealand','NZ'),(151,'Nicaragua','NI'),(152,'Niger','NE'),(153,'Nigeria','NG'),(154,'Niue','NU'),(155,'Norfolk Island','NF'),(156,'Northern Mariana Islands','MP'),(157,'Norway','NO'),(158,'Oman','OM'),(159,'Pakistan','PK'),(160,'Palau','PW'),(161,'Palestinian Territory, Occupied','PS'),(162,'Panama','PA'),(163,'Papua New Guinea','PG'),(164,'Paraguay','PY'),(165,'Peru','PE'),(166,'Philippines','PH'),(167,'Pitcairn','PN'),(168,'Poland','PL'),(169,'Portugal','PT'),(170,'Puerto Rico','PR'),(171,'Qatar','QA'),(172,'Reunion','RE'),(173,'Romania','RO'),(174,'Russian Federation','RU'),(175,'Rwanda','RW'),(176,'Saint Helena','SH'),(177,'Saint Kitts and Nevis','KN'),(178,'Saint Lucia','LC'),(179,'Saint Pierre and Miquelon','PM'),(180,'Saint Vincent and the Grenadines','VC'),(181,'Samoa','WS'),(182,'San Marino','SM'),(183,'Sao Tome and Principe','ST'),(184,'Saudi Arabia','SA'),(185,'Senegal','SN'),(186,'Serbia and Montenegro','CS'),(187,'Seychelles','SC'),(188,'Sierra Leone','SL'),(189,'Singapore','SG'),(190,'Slovakia','SK'),(191,'Slovenia','SI'),(192,'Solomon Islands','SB'),(193,'Somalia','SO'),(194,'South Africa','ZA'),(195,'South Georgia and the South Sandwich Islands','GS'),(196,'Spain','ES'),(197,'Sri Lanka','LK'),(198,'Sudan','SD'),(199,'Suriname','SR'),(200,'Svalbard and Jan Mayen','SJ'),(201,'Swaziland','SZ'),(202,'Sweden','SE'),(203,'Switzerland','CH'),(204,'Syrian Arab Republic','SY'),(205,'Taiwan, Province of China','TW'),(206,'Tajikistan','TJ'),(207,'Tanzania, United Republic of','TZ'),(208,'Thailand','TH'),(209,'Timor-Leste','TL'),(210,'Togo','TG'),(211,'Tokelau','TK'),(212,'Tonga','TO'),(213,'Trinidad and Tobago','TT'),(214,'Tunisia','TN'),(215,'Turkey','TR'),(216,'Turkmenistan','TM'),(217,'Turks and Caicos Islands','TC'),(218,'Tuvalu','TV'),(219,'Uganda','UG'),(220,'Ukraine','UA'),(221,'United Arab Emirates','AE'),(222,'United Kingdom','GB'),(223,'United States','US'),(224,'United States Minor Outlying Islands','UM'),(225,'Uruguay','UY'),(226,'Uzbekistan','UZ'),(227,'Vanuatu','VU'),(228,'Venezuela','VE'),(229,'Viet Nam','VN'),(230,'Virgin Islands, British','VG'),(231,'Virgin Islands, U.s.','VI'),(232,'Wallis and Futuna','WF'),(233,'Western Sahara','EH'),(234,'Yemen','YE'),(235,'Zambia','ZM'),(236,'Zimbabwe','ZW');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_groups`
--

DROP TABLE IF EXISTS `countries_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries_groups` (
  `country_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`country_id`,`group_id`),
  KEY `fk_countries_groups_groups1` (`group_id`),
  KEY `fk_countries_groups_countries1` (`country_id`),
  CONSTRAINT `fk_countries_groups_countries1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_countries_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_groups`
--

LOCK TABLES `countries_groups` WRITE;
/*!40000 ALTER TABLE `countries_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deny_translations`
--

DROP TABLE IF EXISTS `deny_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deny_translations` (
  `user_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  KEY `fk_deny_translations_users1` (`user_id`),
  KEY `fk_deny_translations_languages1` (`language_id`),
  CONSTRAINT `fk_deny_translations_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_deny_translations_languages1` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deny_translations`
--

LOCK TABLES `deny_translations` WRITE;
/*!40000 ALTER TABLE `deny_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `deny_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `hash` varchar(50) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_files_users1` (`user_id`),
  CONSTRAINT `fk_files_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files_groups`
--

DROP TABLE IF EXISTS `files_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files_groups` (
  `file_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`file_id`,`group_id`),
  KEY `fk_files_groups_groups1` (`group_id`),
  KEY `fk_files_groups_files1` (`file_id`),
  CONSTRAINT `fk_files_groups_files1` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_files_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files_groups`
--

LOCK TABLES `files_groups` WRITE;
/*!40000 ALTER TABLE `files_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `files_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flags`
--

DROP TABLE IF EXISTS `flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  `created` datetime NOT NULL,
  `flagged_uri` text COMMENT 'Where you has flagged something. This helps admins make their work.',
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_flags_users1` (`user_id`),
  CONSTRAINT `fk_flags_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flags`
--

LOCK TABLES `flags` WRITE;
/*!40000 ALTER TABLE `flags` DISABLE KEYS */;
/*!40000 ALTER TABLE `flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flags_users`
--

DROP TABLE IF EXISTS `flags_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flags_users` (
  `flag_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`flag_id`,`user_id`),
  KEY `fk_flags_users_users1` (`user_id`),
  KEY `fk_flags_users_flags1` (`flag_id`),
  CONSTRAINT `fk_flags_users_flags1` FOREIGN KEY (`flag_id`) REFERENCES `flags` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_flags_users_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flags_users`
--

LOCK TABLES `flags_users` WRITE;
/*!40000 ALTER TABLE `flags_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `flags_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `lead` text,
  `body` text,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `closed` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'sami grouppi','tääl testailen juttuja','jee jee','2010-09-10 10:54:21','2010-09-10 10:54:21',NULL),(2,'MW group 01','Testing group','Etiam fringilla dolor eget metus iaculis sodales. Pellentesque eu nibh diam; in consequat libero. Nulla aliquet ullamcorper dolor, sed ullamcorper urna semper a. Phasellus a semper neque. Quisque ultricies rutrum erat, ac congue ligula egestas varius. Praesent sagittis aliquam erat, et consectetur massa ultrices sit amet. Vivamus sodales elit vel lacus pulvinar interdum. Vivamus ante tellus, semper hendrerit adipiscing sollicitudin, pellentesque in sem. Phasellus ac scelerisque lectus. Integer et tortor nisi? Donec rhoncus rhoncus nisl, sit amet ultrices purus dictum sagittis. Etiam vitae nisl augue, sit amet iaculis dolor. Fusce a hendrerit libero.\r\n\r\nAliquam vel leo felis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In sed tortor lectus. Integer suscipit imperdiet odio, ac tempus magna lobortis id. Sed ut erat vel mi porta elementum et sed.\r\n','2010-09-15 08:51:37','2010-09-15 08:51:37',NULL),(3,'Teemu','Massidea.org is an open innovation community for sharing challenges, ideas and visions. It boosts individual and communal creativity by intelligently connecting people and their insights. Massidea.org is also free open source solution. We are constantly looking for new, likeminded partners to join our development team.','Open networks are permanently changing how we operate. To succeed we must learn how to utilize external resources and share our insights with others. Therefore educational and innovation systems must also evolve and give genuine tools to operate in these open networks. \r\n\r\nThe development and administration of Massidea.org is strongly based on students’ work, while they are undertaking their studies. In massidea.org everything you see and feel has a student’s imprint. Our multicultural team holds a mixture of talents and insights. We learn something new everyday through our interaction. \r\n\r\nWant to join us and seize the opportunity? Your contribution is welcome.\r\n','2010-09-17 12:25:38','2010-09-17 12:25:38',NULL),(4,'toinen ryhmä','dks','dsada','2010-09-17 12:33:34','2010-09-17 12:33:34',NULL),(5,'Paras A-ryhmä','Me vaadimme vain parasta!',NULL,'2010-09-21 15:21:43','2010-09-21 15:21:43',NULL),(6,'. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .','. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ','. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ','2010-09-27 11:19:11','2010-09-27 11:19:11',NULL),(7,'Paras  A-ryhmä','Paras A-ryhmä','Paras A-ryhmä','2010-09-29 11:12:03','2010-09-29 11:12:03',NULL),(8,'Paras   A-ryhmä','Paras A-ryhmä','Paras A-ryhmä','2010-09-29 11:12:30','2010-09-29 11:12:30',NULL),(9,'Paras    A-ryhmä','Paras A-ryhmä','Paras A-ryhmä','2010-09-29 11:12:43','2010-09-29 11:12:43',NULL),(20,'MW group 02','Vivamus quis sapien quis quam suscipit congue et id metus. Donec id ante congue massa fringilla semper nec at sem. Nullam a ligula ac ligula tincidunt luctus. Etiam malesuada, lacus a posuere scelerisque; purus nibh rutrum est, sit amet lacinia sem tellus eget volutpat.\r\n','Nulla facilisi. Maecenas risus dui, aliquam quis tincidunt sed, blandit et diam. Nunc nec mauris id risus bibendum imperdiet non eu sem. Quisque ac eros augue, ac venenatis eros. Aliquam dui turpis, eleifend eget venenatis non, venenatis et elit? Aenean mi eros; suscipit id hendrerit eget, gravida et libero. Fusce in libero eget justo mattis sagittis et id velit? Sed augue purus, consequat eu rutrum eget, elementum non nisl. Integer tellus felis, suscipit eget sodales ut, rhoncus nec elit. Aenean posuere faucibus diam, in suscipit velit euismod vel. Mauris molestie dolor sed mauris lacinia lobortis eleifend ipsum malesuada. Nullam eleifend, mi non mollis blandit; diam nibh porttitor lorem; sit amet varius sem leo nec libero.\r\n\r\nPraesent non quam vitae quam consectetur posuere in sit amet tellus. Morbi rhoncus suscipit dapibus. Nulla tristique sollicitudin eleifend. Donec libero leo volutpat.\r\n','2010-09-29 18:57:12','2010-09-29 18:57:12',NULL),(21,'MW group 03','Pellentesque pharetra ipsum quis est faucibus ac tristique elit pretium? Nunc vitae est non arcu ornare gravida ac et lacus. Fusce eu eleifend justo. Maecenas volutpat, ligula ac volutpat ullamcorper, urna felis consequat nunc, nec pretium risus augue et tellus. Ut sed.\r\n','Maecenas suscipit congue facilisis. Donec ac lorem id mi dignissim pulvinar. Donec eget semper lorem. Sed sit amet diam libero, et semper ipsum. Mauris sit amet venenatis risus! Ut gravida; erat eu scelerisque accumsan, augue nunc feugiat nisi, in varius tortor arcu non nulla. Sed nec sem vitae metus pretium sodales at sed risus. Morbi eget urna quis sapien convallis faucibus. Maecenas eget lacus a ligula molestie euismod. Nam convallis, justo ac semper \r\n\r\ninterdum, nunc nisl lobortis leo, vitae ullamcorper enim mauris in urna. Donec sit amet nulla arcu, quis hendrerit neque. Curabitur lorem orci, dapibus nec ullamcorper sit amet, vehicula eu velit! Aenean auctor est ut justo sodales convallis. Sed et enim velit, vel commodo arcu. Pellentesque felis mauris, rhoncus blandit accumsan ac; viverra id nibh. Nullam condimentum mauris at est semper pharetra. Etiam varius augue eu lorem massa nunc.\r\n','2010-09-29 19:30:06','2010-09-29 19:30:06',NULL),(24,'dsffsddfs','fdsdfs','fsdsfd','2010-09-30 10:12:05','2010-09-30 10:12:05',NULL),(25,'Tämä on erittäin pitkä ryhmän nimi jolla testaan kuin se käyttäytyy leiskassa eri sivuilla. Toivottavasti kukaan ei tee näin.','Shortly explain the purpose of the group by answering to what, who and whom questions. This information is shown on the group listing pages and therefore is important tool to attract users.\r\n','Group collects together individual users who share mutual interest such as studies, hobbies, association activities, job or place of residence.\r\n\r\nAll logged in users can create as many groups as they want and linked their own groups to other groups.\r\n\r\nGroup collects together individual users who share mutual interest such as studies, hobbies, association activities, job or place of residence.\r\n\r\nAll logged in users can create as many groups as they want and linked their own groups to other groups.\r\n\r\n\r\n','2010-09-30 11:45:36','2010-09-30 11:45:36',NULL),(26,'Lisä group','dlsa ','dsöa','2010-09-30 13:53:33','2010-09-30 13:53:33',NULL),(28,'testi','äääääääääää äöööööööööööööööööö äääää\r\näääääääääää äöööööööööööööööööö äääää\r\näääääääääää äöööööööööööööööööö äääää\r\näääääääääää äöööööööööööööööööö äääää\r\näääääääääää ',NULL,'2010-10-01 11:25:34','2010-10-01 11:25:34',NULL),(29,'Kyamk','Praesent ut erat eget dui aliquam mattis a sed tellus. Morbi cursus; leo nec volutpat consequat; eros leo pellentesque lorem, vel volutpat diam lectus\r\n\r\nsit amet velit. In iaculis commodo est eget dictum. Nunc accumsan posuere turpis quis aliquam. Praesent nisi nibh amet.','Nulla facilisi. Suspendisse potenti. Quisque cursus, magna in luctus euismod, dolor magna cursus magna, in malesuada tellus est quis lectus. Ut condimentum euismod lorem, eget cursus neque vestibulum at. Maecenas a lorem eget lectus suscipit rutrum nec nec arcu. Fusce metus lacus, tempus lacinia facilisis ac, sodales feugiat leo. Praesent condimentum purus in dolor semper pellentesque.\r\n\r\nIn hac habitasse platea dictumst. Nullam quis sapien est, fermentum dictum lacus. Cras nunc erat, lacinia ut hendrerit eget, ultrices ut nibh? Quisque molestie nulla quis dolor porttitor eu imperdiet ipsum tempor! Pellentesque vitae congue tortor. Pellentesque eget lacus ut tellus pretium sagittis! Nulla quis rutrum lorem. Nulla facilisi. Etiam porta adipiscing laoreet. Maecenas eget nisl erat. Sed quam tellus, ullamcorper eget faucibus ut, scelerisque at nibh! Integer faucibus justo eu lorem aliquet amet.','2010-10-06 12:24:33','2010-10-06 12:24:33',NULL),(31,'sdf','sdf',NULL,'2010-10-12 13:24:57','2010-10-12 13:24:57',NULL),(32,'sdfffffff','asdf',NULL,'2010-10-12 13:27:50','2010-10-12 13:27:50',NULL),(33,'sdfffffffff','asdf',NULL,'2010-10-12 13:28:40','2010-10-12 13:28:40',NULL),(34,'sdffffffffff','asdf',NULL,'2010-10-12 13:30:16','2010-10-12 13:30:16',NULL),(35,'sdfffffffffff','asdf',NULL,'2010-10-12 13:30:44','2010-10-12 13:30:44',NULL),(36,'sdffffffffffff','asdf',NULL,'2010-10-12 13:32:13','2010-10-12 13:32:13',NULL),(38,'asd','sda','sad','2010-10-18 15:02:39','2010-10-18 15:02:39',NULL),(39,'super','asd','asd','2010-10-18 15:43:47','2010-10-18 15:43:47',NULL),(40,'Koe Koe','Group collects together individual users who share mutual interest such as studies, hobbies, association activities, job or place of residence.\r\n\r\nAll logged in users can create as many groups as they want and linked their own groups to other groups.\r\n\r\nGroup collects together individual users who ','Group collects together individual users who share mutual interest such as studies, hobbies, association activities, job or place of residence.\r\n\r\nAll logged in users can create as many groups as they want and linked their own groups to other groups.\r\n','2010-10-19 13:15:38','2010-10-19 13:15:38',NULL),(41,'Koe Koe Koe','Group collects together individual users who share mutual interest such as studies, hobbies, association activities, job or place of residence.\r\n\r\nAll logged in users can create as many groups as they want and linked their own groups to other groups.\r\n\r\nGroup collects together individual users who ','Group collects together individual users who share mutual interest such as studies, hobbies, association activities, job or place of residence.\r\n\r\nAll logged in users can create as many groups as they want and linked their own groups to other groups.\r\n','2010-10-19 13:15:59','2010-10-19 13:15:59',NULL),(42,'Mitän nyt?','Group collects together individual users who share mutual interest such as studies, hobbies, association activities, job or place of residence.\r\n\r\nAll logged in users can create as many groups as they want and linked their own groups to other groups.\r\n\r\nGroup collects together individual users who ','Group collects together individual users who share mutual interest such as studies, hobbies, association activities, job or place of residence.\r\n\r\nAll logged in users can create as many groups as they want and linked their own groups to other groups.\r\n','2010-10-19 13:16:22','2010-10-19 13:16:22',NULL),(43,'Uudetaan','Group collects together individual users who share mutual interest such as studies, hobbies, association activities, job or place of residence.\r\n\r\nAll logged in users can create as many groups as they want and linked their own groups to other groups.\r\n','Group collects together individual users who share mutual interest such as studies, hobbies, association activities, job or place of residence.\r\n\r\nAll logged in users can create as many groups as they want and linked their own groups to other groups.\r\n','2010-10-19 13:16:56','2010-10-19 13:16:56',NULL),(44,'123','123','123','2010-10-19 13:17:54','2010-10-19 13:17:54',NULL),(45,'1234412','123','123','2010-10-19 13:18:08','2010-10-19 13:18:08',NULL),(46,'dsna','djas','dsa','2010-10-19 13:18:22','2010-10-19 13:18:22',NULL),(47,'1234412123','123','123','2010-10-19 13:18:25','2010-10-19 13:18:25',NULL),(48,'1234412123414','123','123','2010-10-19 13:18:37','2010-10-19 13:18:37',NULL),(49,'grouppi testipäivitys','djkas','dklas','2010-10-19 13:27:14','2010-10-19 13:27:14',NULL),(50,'group päivitys testi','djmas','dasö','2010-10-19 13:27:52','2010-10-19 13:27:52',NULL),(51,'f','f','f','2010-10-20 08:38:07','2010-10-20 08:38:07',NULL),(52,'tiedostofsdf','testi',NULL,'2010-10-20 10:30:17','2010-10-20 10:30:17',NULL),(53,'Morbi elit nibh, accumsan id porttitor.','Quisque posuere lorem id eros cursus euismod? Mauris ut ante ante. Praesent magna velit, dapibus non consequat eu, consequat vitae metus. Fusce diam neque, elementum vel tristique sit amet, lobortis sollicitudin odio. Aenean ornare, magna ac consectetur convallis metus.\r\n','Mauris at sem sed felis vestibulum faucibus quis eget nibh. In ornare tellus ut eros dignissim suscipit. Duis lacinia pharetra ipsum, id ultrices augue semper vitae. Nam suscipit nibh at tortor semper in congue augue faucibus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent arcu mi, molestie id venenatis ut, interdum congue dui. Integer pellentesque malesuada ante quis ornare? Fusce eget purus ac lacus tempor viverra? Curabitur dignissim euismod leo, vel volutpat ante sagittis id. Phasellus faucibus mi in nulla volutpat viverra. Proin neque mauris, dictum id tristique a, molestie id risus. Maecenas et velit euismod sapien tristique ullamcorper. Sed mollis, odio accumsan aliquet placerat, lorem odio rutrum quam, ac mollis sapien est sit amet quam. Duis ullamcorper pellentesque feugiat. Cras vitae porta neque! Nullam vel mauris volutpat.\r\n','2010-11-15 10:35:09','2010-11-15 10:35:09',NULL),(54,'hghgfh','fggfh','fghg','2010-11-22 12:01:28','2010-11-22 12:01:28',NULL),(55,'testiiii','test','test','2011-01-11 11:24:35','2011-01-11 11:24:35',NULL),(56,'DKTestClosed','Hvem: Dem. Hvorfor: Næh. ','Her skal der være en fuld description!!','2011-02-14 13:16:37','2011-02-14 13:16:37',NULL),(59,'DkTest','This is a test','More testing','2011-02-14 13:37:23','2011-02-14 13:37:23',NULL),(73,'efawfwe','fweaf','fewdfwefwef','2011-02-21 02:19:22','2011-02-21 02:19:22',NULL);
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_languages`
--

DROP TABLE IF EXISTS `groups_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_languages` (
  `group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  PRIMARY KEY (`group_id`,`language_id`),
  KEY `fk_groups_languages_languages1` (`language_id`),
  KEY `fk_groups_languages_groups1` (`group_id`),
  CONSTRAINT `fk_groups_languages_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_groups_languages_languages1` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_languages`
--

LOCK TABLES `groups_languages` WRITE;
/*!40000 ALTER TABLE `groups_languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_links`
--

DROP TABLE IF EXISTS `groups_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_links` (
  `group_id` int(11) NOT NULL,
  `link_id` int(11) NOT NULL,
  PRIMARY KEY (`group_id`,`link_id`),
  KEY `fk_groups_links_links1` (`link_id`),
  KEY `fk_groups_links_groups1` (`group_id`),
  CONSTRAINT `fk_groups_links_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_groups_links_links1` FOREIGN KEY (`link_id`) REFERENCES `links` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_links`
--

LOCK TABLES `groups_links` WRITE;
/*!40000 ALTER TABLE `groups_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_personal_tags`
--

DROP TABLE IF EXISTS `groups_personal_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_personal_tags` (
  `group_id` int(11) NOT NULL,
  `personal_tag_id` int(11) NOT NULL,
  PRIMARY KEY (`group_id`,`personal_tag_id`),
  KEY `fk_groups_personal_tags_personal_tags1` (`personal_tag_id`),
  KEY `fk_groups_personal_tags_groups1` (`group_id`),
  CONSTRAINT `fk_groups_personal_tags_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_groups_personal_tags_personal_tags1` FOREIGN KEY (`personal_tag_id`) REFERENCES `personal_tags` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_personal_tags`
--

LOCK TABLES `groups_personal_tags` WRITE;
/*!40000 ALTER TABLE `groups_personal_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_personal_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_private_messages`
--

DROP TABLE IF EXISTS `groups_private_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_private_messages` (
  `group_id` int(11) NOT NULL,
  `private_message_id` int(11) NOT NULL,
  PRIMARY KEY (`group_id`,`private_message_id`),
  KEY `fk_groups_private_messages_private_messages1` (`private_message_id`),
  KEY `fk_groups_private_messages_groups1` (`group_id`),
  CONSTRAINT `fk_groups_private_messages_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_groups_private_messages_private_messages1` FOREIGN KEY (`private_message_id`) REFERENCES `private_messages` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_private_messages`
--

LOCK TABLES `groups_private_messages` WRITE;
/*!40000 ALTER TABLE `groups_private_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_private_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_ratings`
--

DROP TABLE IF EXISTS `groups_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_ratings` (
  `group_id` int(11) NOT NULL,
  `rating_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`rating_id`),
  KEY `fk_groups_ratings_ratings1` (`rating_id`),
  KEY `fk_groups_ratings_groups1` (`group_id`),
  CONSTRAINT `fk_groups_ratings_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_groups_ratings_ratings1` FOREIGN KEY (`rating_id`) REFERENCES `ratings` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_ratings`
--

LOCK TABLES `groups_ratings` WRITE;
/*!40000 ALTER TABLE `groups_ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_related_companies`
--

DROP TABLE IF EXISTS `groups_related_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_related_companies` (
  `group_id` int(11) NOT NULL,
  `related_company_id` int(11) NOT NULL,
  PRIMARY KEY (`group_id`,`related_company_id`),
  KEY `fk_groups_related_companies_related_companies1` (`related_company_id`),
  KEY `fk_groups_related_companies_groups1` (`group_id`),
  CONSTRAINT `fk_groups_related_companies_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_groups_related_companies_related_companies1` FOREIGN KEY (`related_company_id`) REFERENCES `related_companies` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_related_companies`
--

LOCK TABLES `groups_related_companies` WRITE;
/*!40000 ALTER TABLE `groups_related_companies` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_related_companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_requests`
--

DROP TABLE IF EXISTS `groups_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_requests` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `message` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`group_id`),
  KEY `fk_users_groups_groups1` (`group_id`),
  KEY `fk_users_groups_users1` (`user_id`),
  CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_requests`
--

LOCK TABLES `groups_requests` WRITE;
/*!40000 ALTER TABLE `groups_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_tags`
--

DROP TABLE IF EXISTS `groups_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_tags` (
  `group_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`group_id`,`tag_id`),
  KEY `fk_groups_tags_tags1` (`tag_id`),
  KEY `fk_groups_tags_groups1` (`group_id`),
  CONSTRAINT `fk_groups_tags_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_groups_tags_tags1` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_tags`
--

LOCK TABLES `groups_tags` WRITE;
/*!40000 ALTER TABLE `groups_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_towns`
--

DROP TABLE IF EXISTS `groups_towns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_towns` (
  `group_id` int(11) NOT NULL,
  `town_id` int(11) NOT NULL,
  PRIMARY KEY (`group_id`,`town_id`),
  KEY `fk_groups_towns_towns1` (`town_id`),
  KEY `fk_groups_towns_groups1` (`group_id`),
  CONSTRAINT `fk_groups_towns_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_groups_towns_towns1` FOREIGN KEY (`town_id`) REFERENCES `towns` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_towns`
--

LOCK TABLES `groups_towns` WRITE;
/*!40000 ALTER TABLE `groups_towns` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_towns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_users`
--

DROP TABLE IF EXISTS `groups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_users` (
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fovourite` tinyint(1) DEFAULT NULL,
  `user_role_id` int(11) NOT NULL,
  PRIMARY KEY (`group_id`,`user_id`),
  KEY `fk_groups_users_users1` (`user_id`),
  KEY `fk_groups_users_groups1` (`group_id`),
  KEY `fk_groups_users_user_roles1` (`user_role_id`),
  CONSTRAINT `fk_groups_users_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_groups_users_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_groups_users_user_roles1` FOREIGN KEY (`user_role_id`) REFERENCES `user_roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_users`
--

LOCK TABLES `groups_users` WRITE;
/*!40000 ALTER TABLE `groups_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbox_flags`
--

DROP TABLE IF EXISTS `inbox_flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbox_flags` (
  `flag_id` int(11) NOT NULL,
  `private_messages_user_id` int(11) NOT NULL,
  PRIMARY KEY (`flag_id`,`private_messages_user_id`),
  KEY `fk_flags_private_messages_users_private_messages_users1` (`private_messages_user_id`),
  KEY `fk_flags_private_messages_users_flags1` (`flag_id`),
  CONSTRAINT `fk_flags_private_messages_users_flags1` FOREIGN KEY (`flag_id`) REFERENCES `flags` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_flags_private_messages_users_private_messages_users1` FOREIGN KEY (`private_messages_user_id`) REFERENCES `private_messages_users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbox_flags`
--

LOCK TABLES `inbox_flags` WRITE;
/*!40000 ALTER TABLE `inbox_flags` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbox_flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbox_tags`
--

DROP TABLE IF EXISTS `inbox_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbox_tags` (
  `personal_tag_id` int(11) NOT NULL,
  `private_messages_user_id` int(11) NOT NULL,
  PRIMARY KEY (`personal_tag_id`,`private_messages_user_id`),
  KEY `fk_personal_tags_private_messages_users_private_messages_users1` (`private_messages_user_id`),
  KEY `fk_personal_tags_private_messages_users_personal_tags1` (`personal_tag_id`),
  CONSTRAINT `fk_personal_tags_private_messages_users_personal_tags1` FOREIGN KEY (`personal_tag_id`) REFERENCES `personal_tags` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_personal_tags_private_messages_users_private_messages_users1` FOREIGN KEY (`private_messages_user_id`) REFERENCES `private_messages_users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbox_tags`
--

LOCK TABLES `inbox_tags` WRITE;
/*!40000 ALTER TABLE `inbox_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbox_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `iso6391` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'Afrikaans','af'),(2,'Albanian','sq'),(3,'Amharic','am'),(4,'Arabic','ar'),(5,'Armenian','hy'),(6,'Azerbaijani','az'),(7,'Basque','eu'),(8,'Belarusian','be'),(9,'Bengali','bn'),(10,'Bihari','bh'),(11,'Bulgarian','bg'),(12,'Burmese','my'),(13,'Catalan','ca'),(14,'Cherokee','chr'),(15,'Chinese','zh'),(16,'Chinese_simplified','zh-CN'),(17,'Chinese_traditional','zh-TW'),(18,'Croatian','hr'),(19,'Czech','cs'),(20,'Danish','da'),(21,'Dhivehi','dv'),(22,'Dutch','nl'),(23,'English','en'),(24,'Esperanto','eo'),(25,'Estonian','et'),(26,'Filipino','tl'),(27,'Finnish','fi'),(28,'French','fr'),(29,'Galician','gl'),(30,'Georgian','ka'),(31,'German','de'),(32,'Greek','el'),(33,'Guarani','gn'),(34,'Gujarati','gu'),(35,'Hebrew','iw'),(36,'Hindi','hi'),(37,'Hungarian','hu'),(38,'Icelandic','is'),(39,'Indonesian','id'),(40,'Inuktitut','iu'),(41,'Irish','ga'),(42,'Italian','it'),(43,'Japanese','ja'),(44,'Kannada','kn'),(45,'Kazakh','kk'),(46,'Khmer','km'),(47,'Korean','ko'),(48,'Kurdish','ku'),(49,'Kyrgyz','ky'),(50,'Laothian','lo'),(51,'Latvian','lv'),(52,'Lithuanian','lt'),(53,'Macedonian','mk'),(54,'Malay','ms'),(55,'Malayalam','ml'),(56,'Maltese','mt'),(57,'Marathi','mr'),(58,'Mongolian','mn'),(59,'Nepali','ne'),(60,'Norwegian','no'),(61,'Oriya','or'),(62,'Pashto','ps'),(63,'Persian','fa'),(64,'Polish','pl'),(65,'Portuguese','pt-PT'),(66,'Punjabi','pa'),(67,'Romanian','ro'),(68,'Russian','ru'),(69,'Sanskrit','sa'),(70,'Serbian','sr'),(71,'Sindhi','sd'),(72,'Sinhalese','si'),(73,'Slovak','sk'),(74,'Slovenian','sl'),(75,'Spanish','es'),(76,'Swahili','sw'),(77,'Swedish','sv'),(78,'Tajik','tg'),(79,'Tamil','ta'),(80,'Tagalog','tl'),(81,'Telugu','te'),(82,'Thai','th'),(83,'Tibetan','bo'),(84,'Turkish','tr'),(85,'Ukrainian','uk'),(86,'Urdu','ur'),(87,'Uzbek','uz'),(88,'Uighur','ug'),(89,'Vietnamese','vi'),(90,'Welsh','cy'),(91,'Yiddish','yi');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linked_campaigns`
--

DROP TABLE IF EXISTS `linked_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linked_campaigns` (
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`from`,`to`),
  KEY `fk_campaigns_campaigns_campaigns2` (`to`),
  KEY `fk_campaigns_campaigns_campaigns1` (`from`),
  CONSTRAINT `fk_campaigns_campaigns_campaigns1` FOREIGN KEY (`from`) REFERENCES `campaigns` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_campaigns_campaigns_campaigns2` FOREIGN KEY (`to`) REFERENCES `campaigns` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linked_campaigns`
--

LOCK TABLES `linked_campaigns` WRITE;
/*!40000 ALTER TABLE `linked_campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `linked_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linked_contents`
--

DROP TABLE IF EXISTS `linked_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linked_contents` (
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  KEY `fk_linked_contents_contents1` (`from`),
  KEY `fk_linked_contents_contents2` (`to`),
  CONSTRAINT `fk_linked_contents_contents1` FOREIGN KEY (`from`) REFERENCES `contents` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_linked_contents_contents2` FOREIGN KEY (`to`) REFERENCES `contents` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linked_contents`
--

LOCK TABLES `linked_contents` WRITE;
/*!40000 ALTER TABLE `linked_contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `linked_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linked_groups`
--

DROP TABLE IF EXISTS `linked_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linked_groups` (
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`from`,`to`),
  KEY `fk_groups_groups_groups2` (`to`),
  KEY `fk_groups_groups_groups1` (`from`),
  CONSTRAINT `fk_groups_groups_groups1` FOREIGN KEY (`from`) REFERENCES `groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_groups_groups_groups2` FOREIGN KEY (`to`) REFERENCES `groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linked_groups`
--

LOCK TABLES `linked_groups` WRITE;
/*!40000 ALTER TABLE `linked_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `linked_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `url` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links_private_messages`
--

DROP TABLE IF EXISTS `links_private_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links_private_messages` (
  `link_id` int(11) NOT NULL,
  `private_message_id` int(11) NOT NULL,
  PRIMARY KEY (`link_id`,`private_message_id`),
  KEY `fk_links_private_messages_private_messages1` (`private_message_id`),
  KEY `fk_links_private_messages_links1` (`link_id`),
  CONSTRAINT `fk_links_private_messages_links1` FOREIGN KEY (`link_id`) REFERENCES `links` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_links_private_messages_private_messages1` FOREIGN KEY (`private_message_id`) REFERENCES `private_messages` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links_private_messages`
--

LOCK TABLES `links_private_messages` WRITE;
/*!40000 ALTER TABLE `links_private_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `links_private_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links_users`
--

DROP TABLE IF EXISTS `links_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links_users` (
  `link_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`link_id`,`user_id`),
  KEY `fk_links_users_users1` (`user_id`),
  KEY `fk_links_users_links1` (`link_id`),
  CONSTRAINT `fk_links_users_links1` FOREIGN KEY (`link_id`) REFERENCES `links` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_links_users_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links_users`
--

LOCK TABLES `links_users` WRITE;
/*!40000 ALTER TABLE `links_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `links_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbox_tags`
--

DROP TABLE IF EXISTS `outbox_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outbox_tags` (
  `private_message_id` int(11) NOT NULL,
  `personal_tag_id` int(11) NOT NULL,
  PRIMARY KEY (`private_message_id`,`personal_tag_id`),
  KEY `fk_private_messages_personal_tags_personal_tags1` (`personal_tag_id`),
  KEY `fk_private_messages_personal_tags_private_messages1` (`private_message_id`),
  CONSTRAINT `fk_private_messages_personal_tags_private_messages1` FOREIGN KEY (`private_message_id`) REFERENCES `private_messages` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_private_messages_personal_tags_personal_tags1` FOREIGN KEY (`personal_tag_id`) REFERENCES `personal_tags` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbox_tags`
--

LOCK TABLES `outbox_tags` WRITE;
/*!40000 ALTER TABLE `outbox_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `outbox_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_tags`
--

DROP TABLE IF EXISTS `personal_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `public` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_tags`
--

LOCK TABLES `personal_tags` WRITE;
/*!40000 ALTER TABLE `personal_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_tags_users`
--

DROP TABLE IF EXISTS `personal_tags_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_tags_users` (
  `personal_tag_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`personal_tag_id`,`user_id`),
  KEY `fk_personal_tags_users_users1` (`user_id`),
  KEY `fk_personal_tags_users_personal_tags1` (`personal_tag_id`),
  CONSTRAINT `fk_personal_tags_users_personal_tags1` FOREIGN KEY (`personal_tag_id`) REFERENCES `personal_tags` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_personal_tags_users_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_tags_users`
--

LOCK TABLES `personal_tags_users` WRITE;
/*!40000 ALTER TABLE `personal_tags_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_tags_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `private_messages`
--

DROP TABLE IF EXISTS `private_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `private_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `read_receipt` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `private_messages`
--

LOCK TABLES `private_messages` WRITE;
/*!40000 ALTER TABLE `private_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `private_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `private_messages_users`
--

DROP TABLE IF EXISTS `private_messages_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `private_messages_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `private_message_id` int(11) NOT NULL,
  `receiver` int(11) NOT NULL,
  `important` tinyint(1) NOT NULL DEFAULT '0',
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `reported` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_private_messages_users_users1` (`receiver`),
  KEY `fk_private_messages_users_private_messages1` (`private_message_id`),
  CONSTRAINT `fk_private_messages_users_private_messages1` FOREIGN KEY (`private_message_id`) REFERENCES `private_messages` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_private_messages_users_users1` FOREIGN KEY (`receiver`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `private_messages_users`
--

LOCK TABLES `private_messages_users` WRITE;
/*!40000 ALTER TABLE `private_messages_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `private_messages_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privileges`
--

DROP TABLE IF EXISTS `privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privileges` (
  `user_id` int(11) NOT NULL,
  `group` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privileges`
--

LOCK TABLES `privileges` WRITE;
/*!40000 ALTER TABLE `privileges` DISABLE KEYS */;
/*!40000 ALTER TABLE `privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text,
  `public` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_profiles_users1` (`user_id`),
  CONSTRAINT `fk_profiles_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=329 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,1,'employment','public_sector',0),(2,1,'city','Pori',1),(3,2,'employment','public_sector',0),(4,2,'city','Ulvila',1),(5,3,'employment','education_sector',1),(6,3,'city','St. Pori-Burg 10 ',1),(7,4,'employment','public_sector',0),(8,4,'city','super',1),(11,5,'employment','education_sector',0),(12,5,'city','super',1),(13,2,'openid',NULL,0),(14,2,'gravatar','0',0),(15,2,'phone',NULL,0),(16,2,'firstname','sami',0),(17,2,'surname','suuriniemi',0),(18,2,'gender','1',1),(19,2,'birthday',NULL,0),(20,2,'biography',NULL,0),(21,2,'userlanguage',NULL,0),(22,2,'address',NULL,1),(23,2,'country',NULL,0),(24,2,'usertimezone',NULL,0),(25,2,'company',NULL,0),(26,6,'employment','education_sector',0),(27,6,'city','Järvenpää',1),(28,7,'employment','education_sector',0),(29,7,'city','Kotka',1),(30,8,'employment','public_sector',0),(31,8,'city','pori',1),(33,9,'employment','student',0),(34,9,'city','MANDI',1),(35,10,'employment','public_sector',0),(36,10,'city','Joo',1),(37,6,'openid',NULL,0),(38,6,'gravatar','0',0),(39,6,'phone',NULL,0),(40,6,'firstname',NULL,0),(41,6,'surname',NULL,0),(42,6,'gender','0',0),(43,6,'birthday',NULL,0),(44,6,'biography','Kokeillaan bioa muutos 2.\r\n\r\nhttp://www.youtube.com/watch?v=SworfQZdkf4&feature=grec_index',0),(45,6,'userlanguage','23',0),(46,6,'address',NULL,1),(47,6,'country','FI',1),(48,6,'usertimezone',NULL,0),(49,6,'company',NULL,0),(50,11,'employment','student',0),(51,11,'city','Hamirpur',1),(52,12,'employment','student',0),(53,12,'city','Shimla',1),(54,12,'openid','abhishekrana',0),(55,12,'gravatar','0',0),(56,12,'phone',NULL,0),(57,12,'firstname',NULL,0),(58,12,'surname',NULL,0),(59,12,'gender','0',0),(60,12,'birthday',NULL,0),(61,12,'biography',NULL,0),(62,12,'userlanguage',NULL,0),(63,12,'address',NULL,1),(64,12,'country',NULL,0),(65,12,'usertimezone',NULL,0),(66,12,'company',NULL,0),(67,13,'employment','student',0),(68,13,'city','as',1),(69,14,'employment','education_sector',0),(70,14,'city','jee',1),(71,15,'employment','student',0),(72,15,'city','Rauma',1),(73,15,'openid','jaakkop',0),(74,15,'gravatar','1',0),(75,15,'phone',NULL,0),(76,15,'firstname','Jaakko',1),(77,15,'surname',NULL,0),(78,15,'gender','0',0),(79,15,'birthday',NULL,0),(80,15,'biography',NULL,0),(81,15,'userlanguage',NULL,0),(82,15,'address',NULL,1),(83,15,'country',NULL,0),(84,15,'usertimezone',NULL,0),(85,15,'company',NULL,0),(86,3,'openid','super',0),(87,3,'gravatar','1',0),(88,3,'phone','555',1),(89,3,'firstname','sdf',1),(90,3,'surname','fds',1),(91,3,'gender','2',1),(92,3,'birthday','11/01/2010',1),(93,3,'biography','fds',1),(94,3,'userlanguage','15',0),(95,3,'address','asdd',1),(96,3,'country','FI',1),(97,3,'usertimezone','15',1),(98,3,'company','sdf',1),(101,2,'permissions','[\"user\",\"admin\"]',1),(102,16,'employment','private_sector',0),(103,16,'city','sfdsf',1),(104,17,'employment','pentioner',0),(105,17,'city','ulvila',1),(106,18,'employment','student',0),(107,18,'city','testi',1),(108,19,'employment','public_sector',0),(109,19,'city','super',1),(110,20,'employment','student',0),(111,20,'city','pori',1),(112,21,'employment','pentioner',0),(113,21,'city','Järvenpää',1),(114,22,'employment','private_sector',0),(115,22,'city','Kotka',1),(116,23,'employment','private_sector',0),(117,23,'city','Pori',1),(118,1,'openid',NULL,0),(119,1,'gravatar','0',0),(120,1,'phone',NULL,0),(121,1,'firstname',NULL,0),(122,1,'surname',NULL,0),(123,1,'gender','0',0),(124,1,'birthday',NULL,0),(125,1,'biography',NULL,0),(126,1,'userlanguage',NULL,0),(127,1,'address',NULL,1),(128,1,'country',NULL,0),(129,1,'usertimezone',NULL,0),(130,1,'company',NULL,0),(133,24,'employment','0',0),(134,24,'city','Pori',1),(135,25,'employment','private_sector',0),(136,25,'city','asdf',1),(137,26,'employment','private_sector',0),(138,26,'city','!@#$%^&*(',1),(139,27,'employment','private_sector',0),(140,27,'city','una',1),(249,1,'own_follows','7',0),(250,1,'fvr_follows','23',0),(251,2,'own_follows','7',0),(252,2,'fvr_follows','23',0),(253,3,'own_follows','7',0),(254,3,'fvr_follows','23',0),(255,4,'own_follows','7',0),(256,4,'fvr_follows','23',0),(257,5,'own_follows','7',0),(258,5,'fvr_follows','23',0),(259,6,'own_follows','7',0),(260,6,'fvr_follows','23',0),(261,7,'own_follows','7',0),(262,7,'fvr_follows','23',0),(263,8,'own_follows','7',0),(264,8,'fvr_follows','23',0),(265,9,'own_follows','7',0),(266,9,'fvr_follows','23',0),(267,10,'own_follows','7',0),(268,10,'fvr_follows','23',0),(269,11,'own_follows','7',0),(270,11,'fvr_follows','23',0),(271,12,'own_follows','7',0),(272,12,'fvr_follows','23',0),(273,13,'own_follows','7',0),(274,13,'fvr_follows','23',0),(275,14,'own_follows','7',0),(276,14,'fvr_follows','23',0),(277,15,'own_follows','7',0),(278,15,'fvr_follows','23',0),(279,16,'own_follows','7',0),(280,16,'fvr_follows','23',0),(281,17,'own_follows','7',0),(282,17,'fvr_follows','23',0),(283,18,'own_follows','7',0),(284,18,'fvr_follows','23',0),(285,19,'own_follows','7',0),(286,19,'fvr_follows','23',0),(287,20,'own_follows','7',0),(288,20,'fvr_follows','23',0),(289,21,'own_follows','7',0),(290,21,'fvr_follows','23',0),(291,22,'own_follows','7',0),(292,22,'fvr_follows','23',0),(293,23,'own_follows','7',0),(294,23,'fvr_follows','23',0),(295,24,'own_follows','7',0),(296,24,'fvr_follows','23',0),(297,25,'own_follows','7',0),(298,25,'fvr_follows','23',0),(299,26,'own_follows','7',0),(300,26,'fvr_follows','23',0),(301,27,'own_follows','7',0),(302,27,'fvr_follows','23',0),(303,7,'openid','midnightwalker',0),(304,7,'gravatar','0',0),(305,7,'phone',NULL,0),(306,7,'firstname',NULL,0),(307,7,'surname',NULL,0),(308,7,'gender','0',0),(309,7,'birthday',NULL,0),(310,7,'biography',NULL,0),(311,7,'userlanguage',NULL,0),(312,7,'address',NULL,1),(313,7,'country','FI',1),(314,7,'usertimezone',NULL,0),(315,7,'company',NULL,0),(316,28,'employment','private_sector',0),(317,28,'city','Tampere',1),(318,28,'own_follows','7',0),(319,28,'fvr_follows','23',0),(320,29,'employment','private_sector',0),(321,29,'city','Espoo',1),(322,15,'permissions','[\"user\",\"admin\"]',1),(323,30,'employment','student',0),(324,30,'city','Odense',1),(325,31,'employment','student',0),(326,31,'city','Beverly Hills',1),(327,32,'employment','private_sector',0),(328,32,'city','Kotka',1);
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ratings_users1` (`user_id`),
  CONSTRAINT `fk_ratings_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `readers`
--

DROP TABLE IF EXISTS `readers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `readers` (
  `id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `content_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_readers_contents1` (`content_id`),
  KEY `fk_readers_users1` (`user_id`),
  CONSTRAINT `fk_readers_contents1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_readers_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `readers`
--

LOCK TABLES `readers` WRITE;
/*!40000 ALTER TABLE `readers` DISABLE KEYS */;
/*!40000 ALTER TABLE `readers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `related_companies`
--

DROP TABLE IF EXISTS `related_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `related_companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `related_companies`
--

LOCK TABLES `related_companies` WRITE;
/*!40000 ALTER TABLE `related_companies` DISABLE KEYS */;
/*!40000 ALTER TABLE `related_companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receiver` varchar(45) DEFAULT NULL,
  `message` text,
  `sender` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_requests_users1` (`sender`),
  CONSTRAINT `fk_requests_users1` FOREIGN KEY (`sender`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests`
--

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats`
--

DROP TABLE IF EXISTS `stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` int(11) NOT NULL,
  `value` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_stats_users1` (`user_id`),
  CONSTRAINT `fk_stats_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats`
--

LOCK TABLES `stats` WRITE;
/*!40000 ALTER TABLE `stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (46,'1'),(45,'a'),(77,'ads'),(74,'asdf'),(31,'asdfsdafsdaf'),(68,'astronautti'),(35,'bcbcvb bcbcvb'),(24,'beta'),(21,'bfb'),(32,'cvcvvc'),(39,'d'),(79,'dgdg'),(38,'djslaj'),(37,'dsa'),(11,'dsaf'),(49,'english'),(30,'erqwefas'),(28,'f'),(36,'fasd'),(62,'fdsaf'),(61,'fewfa'),(86,'fewfwe'),(17,'fghfg'),(43,'fghfgh'),(40,'fghfghfghfgh'),(26,'fgs'),(80,'fsdsfd'),(27,'gdfgg'),(56,'gfgfgf'),(13,'hjh'),(4,'ja'),(3,'jaska'),(82,'jee'),(14,'jh'),(25,'jkjh'),(5,'jokunen'),(6,'juoksi'),(20,'kaveri'),(60,'key'),(59,'keyw'),(57,'keyword01'),(58,'keyword02'),(7,'kilpaa'),(50,'koe'),(51,'koe2'),(69,'maailmanloppu'),(66,'målerí'),(85,'mäss'),(18,'matti'),(2,'mitä'),(12,'mnmch'),(1,'moi'),(42,'moijee'),(83,'mörkö'),(48,'name'),(15,'nbvbv'),(16,'nbvmn'),(78,'nn'),(65,'nötrii'),(87,'öfoweij'),(8,'ÖÖÖÖÖÖÖÖÖÖ ÖÖÖÖÖÖÖÖÖÖÖ ÄÄÄÄÄÄÄÄÄÄÄÄÄ ÄÄÄÄÄÄÄÄÄÄÄ ÖÖÖÖÖÖÖ ÖÖÖÖÖÖÖÖÖÖ ÖÖÖÖÖÖÖÖÖÖÖ ÄÄÄÄÄÄÄÄÄÄÄÄÄ ÄÄÄÄÄÄÄÄÄÄÄ ÖÖÖÖÖÖÖ'),(64,'putrii'),(22,'rock'),(10,'sdf'),(34,'sdffds'),(41,'sdfsdf'),(19,'sen'),(81,'super long'),(23,'test'),(29,'testi'),(67,'ufo'),(76,'valtiovarainministeri'),(47,'word'),(44,'xvcvxc'),(73,'zxccxzc'),(9,'航空自卫队');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_users`
--

DROP TABLE IF EXISTS `tags_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags_users` (
  `tag_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`tag_id`,`user_id`),
  KEY `fk_tags_users_users1` (`user_id`),
  KEY `fk_tags_users_tags1` (`tag_id`),
  CONSTRAINT `fk_tags_users_tags1` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tags_users_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_users`
--

LOCK TABLES `tags_users` WRITE;
/*!40000 ALTER TABLE `tags_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('activation','reset') NOT NULL,
  `value` varchar(50) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `users_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tokens_users1` (`users_id`),
  CONSTRAINT `fk_tokens_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `towns`
--

DROP TABLE IF EXISTS `towns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `towns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_towns_countries1` (`country_id`),
  CONSTRAINT `fk_towns_countries1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `towns`
--

LOCK TABLES `towns` WRITE;
/*!40000 ALTER TABLE `towns` DISABLE KEYS */;
INSERT INTO `towns` VALUES (1,'Pori',1),(2,'Ulvila',1),(3,'St. Pori-Burg 10 ',1),(4,'super',1),(5,'JÃ¤rvenpÃ¤Ã¤',1),(6,'Kotka',1),(7,'MANDI',1),(8,'Joo',1),(9,'Hamirpur',1),(10,'Shimla',1),(11,'as',1),(12,'jee',1),(13,'Rauma',1),(14,'sfdsf',1),(15,'testi',1),(16,'asdf',1),(17,'!@#$%^&*(',1),(18,'una',1),(19,'Beverly Hills',1),(20,'Odense',1),(21,'Espoo',1),(22,'Tampere',1);
/*!40000 ALTER TABLE `towns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(50) NOT NULL,
  `password_salt` varchar(128) NOT NULL,
  `email` text NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `town_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_users_towns1` (`town_id`),
  KEY `fk_users_languages1` (`language_id`),
  KEY `fk_users_countries1` (`country_id`),
  CONSTRAINT `fk_users_towns1` FOREIGN KEY (`town_id`) REFERENCES `towns` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_languages1` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_countries1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'iiuusit','be0ef4e98a363e39fdaabafae708e406','aD8tuONXRivWPbU0mhxo9CTPNjlxBapcdnLO1ZmI7XeMyzDbX0GW3ZmH9O5AokcINoWFD8NAWsNKiRm5IsSBH5JHJEIxok52PS7SRLTn4hxcyZX6Ip8QkHXuMfh1GdtV','iiro.uusitalo@samk.fi',' ','2010-10-19 13:27:03','2010-09-10 10:47:25','2010-09-10 10:47:25',1,12,1),(2,'sami','3b827039a4a50208e892c96c95b856de','dX74g7uuDWbm5Sv2FPCwxHsPxEbw5qzYDxTjuEUybvbWENPKcR7QYpgMu78poyErlYRWcmK4XmQbzglRxiiMOEY9CXoqLtYxHpJkRUep6vHwRtEFSmRhqqgsDLZP4xCC','sami.suuriniemi@samk.fi',' ','2010-10-20 10:29:48','2010-09-10 10:47:45','2010-09-10 10:47:45',2,12,1),(3,'super','889c0d1410293625d0faf656cff4e844','NlGS8WLATmPKQ7uIXI6v0GUJ9tkaPw4dYAvWX6Wrjm10jl86t4skBDtAwUbCGVffWQ2tNPax1Rna3lXmfGMhJ6i6Q99XVe2rvub8A1w1IZRCBpohv1E5xm1Em0b8VUqG','supermies@hotmail.com',' ','2011-06-15 10:26:10','2010-09-10 10:56:42','2010-09-10 10:56:42',3,12,1),(4,'superr','733819998569b198689670a4b3aa3aff','Ede8LDVnB1UmIe3iG42ERDsbKRy5aXTe1xcC1xq3pAgxfZVlTOqlRZDbq1WGPqkHeDJW1zPg0vTWLp8f3oHKDKmuC90SpaZKejgVZv1PhLms0kNtPU4TfgDif40LVPVz','s@s.fi',' ','2011-01-11 11:28:36','2010-09-10 13:53:50','2010-09-10 13:53:50',4,12,1),(5,'superrr','fe0a43e9ef00115628f6fa350749652e','qWUaHIj3ThpgZZFpKAIuC9BMrFI8OUh4q2VxA4qUbW11v6h57pqApsMXyVWCp37VvSJvN0FpM7h73E31uk1ZTExHZJKEDIayajkoaqTmn0jh5dYpEQFXU2ftCpyFxP4O','super@super.fi',' ','2011-01-14 11:04:36','2010-09-10 15:56:41','2010-09-10 15:56:41',4,12,1),(6,'teemu1','a787e4584ff0b994ec3bfaa28a877652','EPQQD0Uvkzp8nLDyGzny0LfGDdXVSBOXQeoUV8G5yw4b78QDx41oFXvJ1IeKKshbNLviK1e8oZZlXpoKjgzp4kzvtT53CcUQoGyy8TwmsMNF22QcYGISq7DZQ9TTbnjF','teemu.santonen@gmail.com',' ','2010-11-25 11:01:31','2010-09-13 10:15:44','2010-09-13 10:15:44',5,12,1),(7,'midnightwalker','6fa766fb971ccae4b80351ca86d330e7','H7A5oOw6ECevCvCcAMCwFnnd6QziAMQIJREyf0vk3PV5BYYClayqEbKBs9jsL01VH5Knv5NpKikM79OjaCPeeafMZF5l6w7ErHrdC5INdtabtoAJqQoKqKXFQSrMEoRw','mikko_korpinen@hotmail.com',' ','2011-04-20 10:59:18','2010-09-14 08:40:19','2010-09-14 08:40:19',6,12,1),(8,'demo','f6e62190c9f97393ffb0f8529e25cd90','8P3ExQKFPFmWUYrQEjrjzruj1p5JHc3FsxJfDUlTaOqvmXBr7sRwaBWSrRbyuV4cJE8NZjgzyNlbkmIiVZUvbrDI9f6t11LB5JOUtvKi8v9jYHHthcf8JjGIFD165D80','demo@massidea.org',' ','2010-11-18 10:04:24','2010-09-14 16:12:44','2010-09-14 16:12:44',1,12,1),(9,'tavish','012a0f5bbb5beac38ea695f019ea66aa','Jiy7Hxpt5pgdXCuRGqFhrXZ1x3LPKMCTu0Q1n6kjlHD8KxQRdVyKsNBfHNvRZxkKo1BSxm2Zu5Y5soMMABWtOYPVlAmByNLdFNv30oSlkqhSVteWv1F9QVV2W84KMFoR','vaidyatavish24@gmail.com',' ','2010-10-18 19:02:17','2010-09-15 15:01:51','2010-09-15 15:01:51',7,12,1),(10,'koekoe','e43ebb0388090c0b5bd795eeee954758','zlpCRHA4fwxWdyqBnxI3aeN9xxZ4bBoRmTT4aUy6HmSka9mEwu7NPKNC8m7ZnlqP4AJVV8SckkDBkpFXaDkpOxsMZpmCRTSMUchpazHBaKDBzIYQM85bwnoLTQOkkhw4','teemu.santonen@laurea.fi',' ','2010-09-17 12:57:58','2010-09-17 12:57:58','2010-09-17 12:57:58',8,12,1),(11,'manubamba','b3dc76f5d1a069ce58e26f2e5bf129b4','0dfB3jOg9TTw5SVFUjLt4Kf7r3TMczXTT3UMcjtb2COyVj3qIEZDP5A7yUJQJhjca4p2dYUVajKwIDcRI2VYxVVlpf2yCcRdW6WzVqLwPViYZAqh3B6qWRSCwL1znJS9','manu.bamba@gmail.com',' ','2011-08-02 16:10:06','2010-09-17 20:48:52','2010-09-17 20:48:52',9,12,1),(12,'abhishekrana','d09d144dc7e88f92a710f5b7d3764fbd','0ibEQf0rWaKXxrMa1pfuFMxb5cQ0b6ZRe1VuWMctmmGaUT0L8W6DjtefMvVnru4MmQ78cZrFCxfWGWiEteHSOmxaXIDF38RfOPeqoLvq9RDFnlKWFRoT4cuRlxXfvpAA','abhishekrana502@gmail.com',' ','2010-09-25 19:31:34','2010-09-18 12:47:17','2010-09-18 12:47:17',10,12,1),(13,'manu','2c7dcdf319ef080c822b90e8f4f1b14e','xmf1Pzm05PMxecVoRQzFOIroxlxWH5c5i8xxxaotp0gKT2ykJoqYwYCj9z6HvZCTY0HLQv45mbF5U4gdiN1Vl34kt1reRuypk510rvwTN2PhwwAU92pkvkKfc29tnxZN','manu@hs.com',' ','2010-09-22 08:05:14','2010-09-20 00:32:59','2010-09-20 00:32:59',11,12,1),(14,'teppo','40d9bbcf4a69c3b5ed5db9a1b922da68','aR74BBiPuBgVZ6dPXiQBqDxRNLR72MQTeONfQwvAxSVMPycmXsoDvbV9nm6gzNzTcDzszltm3FzJ4RwRAaVw2qvfTsBI60cY4SHt30Wx5L60dtHeJcQCJChcujlqaDFU','sami.suuriniemi@samk.fi',' ','2010-10-20 08:40:21','2010-09-20 08:38:02','2010-09-20 08:38:02',12,12,1),(15,'jaakkop','cfe212a75002624c55d7f8cbb506248f','1NStUXz1AcMY2S3kMOsLhwGhYAdQcfKTsdDD0340VHOOaIzmWhy4U4cs469XbJrJnvNdoHUAPjOprERDmF86Aap5WoSxyA7bwK5aRPahypMfuejWjiTk88fUnyHczF3l','jaakkop@gmail.com',' ','2011-07-18 16:02:52','2010-09-20 13:05:55','2010-09-20 13:05:55',13,12,1),(16,'bvnvbn','e537a0b598c7cdb9d4f8ff843ed8db88','8ZB0URyxv56nFDWLWhjd3CYJ4pzJ8f965BxPSlDEhArmDEyZlX3faRoU6de59e14foKyQN2xOkZRoOrQlkvB2aWz41u3Vmx0Q7ohLhUaIurw8ZDj9yl2P8rJzbCLD0BU','sami.suuriniemi@samk.fi',' ','2010-09-21 15:13:44','2010-09-21 15:13:44','2010-09-21 15:13:44',14,12,1),(17,'testi1','459fb8cd1abdaed30d142742db76b728','eByDi5T3ZFKSusBTpyQGNeXlj1a4aw35ys8WnSPDXaVHJXbyLr4ZMRBvIbqjOjeCSdY6vo9JFVROstC4a7TnPVYYwF7ApcC75b3rG21LNIZ61b1SZL5ogUCTa9TFcWCY','sami.suuriniemi@samk.fi',' ','2010-09-22 14:04:21','2010-09-22 14:04:21','2010-09-22 14:04:21',1,12,1),(18,'testi','45349e978feb1224830f13dbe52c77c8','Z7Jm0ANmRfIp5czg6JLHbevvgMEjtlkIiuvZu8BBeKramh6jqIqInb3Ko8uYjUhIESizRj1vtiLWFI5wRm44EyFtwzHWJofO6DDNn49XcLtiToUlQOgVClEzaLLkzrzw','sami.suuriniemi@samk.fi',' ','2011-06-10 11:06:40','2010-09-22 14:17:53','2010-09-22 14:17:53',15,12,1),(19,'ZzzzzzzzzZzzz','1884cd9df24243d13d0ca6cb2c572173','DxSFp56eMoYNHHg1vTQ8JrC0imusznL2ad8FY4jlj8yqFUi0oyzyf2oEeYxTC8MccKh1FHcpGQVMk3DPs3DOvsTQHHjJGwli7JZCR1rYIDkt7n8qgC4SuOi1VIBc4mA2','super@super.fi',' ','2010-09-24 08:07:12','2010-09-24 08:07:12','2010-09-24 08:07:12',4,12,1),(20,'jussi','ae0750ee850b472831982de6076e88bb','YP4SYcJ9WMOhbgkLseQPlCOil11kHFWgVRytu8tHK7omePxNtEcUGr2riuSq0pML6B5q9oxKmcwGrkUboxwveocDZvtQa5bX6XD6C1GoT3vBdFcH2O2W3VaTGJjhFB4C','jussi.raitanen@student.samk.fi',' ','2010-10-11 13:31:07','2010-09-27 08:49:23','2010-09-27 08:49:23',1,12,1),(21,'1234567890','fea77408f35052934de4885a2591a4b3','TE5Oz52QtcrXKEOAPHXn6o6MHeU7sAHBECQ38IKrl2Ew6SxMZLzWzwi7Q2483BA7EQ0CZBtB3yxzHlCgw13lobj4Ud3Ne4KjKBljCVk6KYvRAyywprYUJ7PdaIr5D1eN','teemu.santonen@laurea.fi',' ','2010-09-29 19:51:20','2010-09-29 19:51:20','2010-09-29 19:51:20',5,12,1),(22,'mwalker','d6b01dd9ecbf9d333cbe6c883e2771c2','zjI2KH0gogJYiqPrlWTaSlOtrhq1er2TRALbIC7wjHLHxazZxI0FuEzclgTFNMYfMk7Um4HLCST0sIPfRFlBKaev6x0KAPqMznhbionk67apFpLWvwY5N2rKqhVqwB3m','foo@bar.com',' ','2011-02-21 01:47:50','2010-10-06 12:33:13','2010-10-06 12:33:13',6,12,1),(23,'987654321','5db9826ce78f71cb1c34483d80b457c0','Atxr4NXSDmIwbM2bTfKhmnks1CI2c4SdoFLiTj0XL8JnKBEegOBJ2m2toAlH53kj9vHSU7pg6yJH0NlXcnhUPZD4apBVim4hXB0s9fP6UYDKmpiESFZiedc4IeQqGKOe','teemu.santonen@laurea.fi',' ','2010-10-15 01:03:51','2010-10-14 23:23:26','2010-10-14 23:23:26',1,12,1),(24,'12345','4d333c654bc643ef02a1430c4bae73f2','0LCgQjrIb4txkE1lP6GxySkuyt1f9j5zv7WBhDJ883wi7oKNkRAYkkIZTA5Tj0IUyfWVjgUiZHGXvRkWjkvJL4jf4eyeU7yJdLfCrzkH7rfs9FEiqzs2tRYowMIHK6Qn','teemu.santonen@laurea.fi',' ','2010-10-19 15:08:21','2010-10-19 15:08:21','2010-10-19 15:08:21',1,12,1),(25,'atavuish','05b0014e6b1af92dd082b43fd02e2f01','9y2rlAF2abfNlmph3XtQV9S8prUOp7PpwHXXIdPi4vwgXbDQzxhKwzIcgcrMa62MDQjMtzvnkiK89OOzCv9ylIRIl8VC4NO8eyKNo61OeCMeQbTSMTHybY6DWRFRfTP9','vadlafkj@dkfljs.com',' ','2010-10-19 21:28:37','2010-10-19 21:28:37','2010-10-19 21:28:37',16,12,1),(26,'testuser','1fa6af13a9226e83ec4ba10bd6f0743b','qm1mVqj40WJ4EfeTRGmtOsoGE80Z1gJiIAKdquYgHhbLD6fVCHER0tX5rNUjudH3eSXLDvsKTJWXF1sI9wZ0fxvNBGwvk4oFNCQQx8bGIydOpLWp8wfekRrlYeX8ZCDn','vadlafkj@dkfljs.com',' ','2010-10-19 22:52:02','2010-10-19 22:52:02','2010-10-19 22:52:02',17,12,1),(27,'testgaurav','667e8d7c763b6741d71bcf44ab1d8832','S2OeZMpgYAEumH7qF9QZseXwkxdb4NpNF3sfFXBeYGOAOMrTM7s4cGrD4KezXKCdDu8JI9ngF2hUEPnRMWLpd2sXCNNaXP3b91lI1Oo7HMRMb5doRpTvhCJkQWAnl4Fl','gaurav@gmail.com',' ','2010-10-20 08:48:14','2010-10-20 08:48:14','2010-10-20 08:48:14',18,12,1),(28,'midnightw','a33bb7edb356e789315ec5542aa0178d','SOgUcFjpRy4KrkApnTYm2pLYgNEaG5fZKCtmISRaHMkywlea42CxiOLEbQfiMA7WDq8M9QmGcN5PyZptSsg06s5Y8a6Kb4hekfrkvTrOgmeVCJEV2lMyTHNShKd9EAep','foo@bar.com',' ','2010-10-25 12:29:08','2010-10-25 12:29:08','2010-10-25 12:29:08',22,12,1),(29,'teemu2','1f4d7453fad7651cc04eb3858e7bdedc','OcKKI6xLmkZAjKmDDRgm4AuJbkmUyFMDiXOqTB25mS6LciPgzwIuw34OdgiSlvVJIj0bksXNATYd2o9saIcNBWbe39wevIo3reVSMtfND4q5jpoAyHNzepTXpG1aOfT6','teemu.santonen@laurea.fi',' ','2010-11-01 16:11:34','2010-11-01 16:11:34','2010-11-01 16:11:34',21,12,1),(30,'swws','544fda3b219fed5cc82ffc8064d7b721','AC3rfr4qFPENN6S2rIlCEC4fl23FKOKLQD3wvxd0DhDQdVILeuNiwIEYB7eMLoXcsQOdEsTHPXXttg5NQJwDS0cTx6f9l3cTKrwOZGVodtYNPTafcMiuDBE07k0ieS2o','jens.hyllested@gmail.com',' ','2011-03-23 12:12:26','2011-02-10 13:20:15','2011-02-10 13:20:15',20,12,1),(31,'Axel','0ea9230df88c1e74aa5216ad6610650d','J8595jfAJjyRBJmKOhuBloQtgPslo7jy6ex2ET2O2qf4zIEEqzFRdWAAltlQrKEnp1gtKZ8DFd75mCAS1FkVblVDU7TBHXpxPMhalfdq8bmldm4VserKGDNaAhcI5I5K','Fiskerhue@hotmail.com',' ','2011-02-15 12:38:58','2011-02-10 13:21:23','2011-02-10 13:21:23',19,12,1),(32,'mallikas','200b1fcb99ec4fa6ba5b6bab3c55b8d7','8wVmPS4L7rdg5Z2MKewpoyse2tAyGwwFiHrxam9XTd3P2wbCROs6Cba5KbtRNgWvoEjErjcBCWQ4Jr7a6pW9Gx5ROpibL5N0Ax5rWYtZu9U3rRUn7qmEehVsM4KYzXO0','foo@bar.com',' ','2011-03-21 19:36:39','2011-03-21 19:36:39','2011-03-21 19:36:39',6,12,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_private_messages`
--

DROP TABLE IF EXISTS `users_private_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_private_messages` (
  `private_message_id` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  PRIMARY KEY (`private_message_id`,`sender`),
  KEY `fk_private_messages_users1_users1` (`sender`),
  KEY `fk_private_messages_users1_private_messages1` (`private_message_id`),
  CONSTRAINT `fk_private_messages_users1_private_messages1` FOREIGN KEY (`private_message_id`) REFERENCES `private_messages` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_private_messages_users1_users1` FOREIGN KEY (`sender`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_private_messages`
--

LOCK TABLES `users_private_messages` WRITE;
/*!40000 ALTER TABLE `users_private_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_private_messages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-09 10:10:47
