-- --------------------------------------------------------
-- Server:                       127.0.0.1
-- Versiune server:              5.6.29 - MySQL Community Server (GPL)
-- SO server:                    Win64
-- HeidiSQL Versiune:            9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for 14userisiproduseaplicatiefinala
CREATE DATABASE IF NOT EXISTS `14userisiproduseaplicatiefinala` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `14userisiproduseaplicatiefinala`;


-- Dumping structure for table 14userisiproduseaplicatiefinala.accesorii
CREATE TABLE IF NOT EXISTS `accesorii` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nume_produs` text,
  `pret` int(5) DEFAULT NULL,
  `pret_redus` int(5) DEFAULT NULL,
  `scurta_descriere` text,
  `cale_poza` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table 14userisiproduseaplicatiefinala.accesorii: ~12 rows (aproximativ)
/*!40000 ALTER TABLE `accesorii` DISABLE KEYS */;
INSERT INTO `accesorii` (`id`, `nume_produs`, `pret`, `pret_redus`, `scurta_descriere`, `cale_poza`) VALUES
	(1, 'Pebble Time Round Watch', 230, 100, 'Descopera Pebble Time Round, un nou smartwatch cu aspect de ceas, cu o grosime de doar 7,5 mm - este atat de usor, încat uiti ca il porti; dar asta pana cand te ajuta sa iti indeplinesti mai usor obiectivele.', '/2016-03-20ProiectFinalWeb/imagini/accesorii1.png'),
	(2, 'Vector Luna carcasa aur roz din otel inoxidabil', 430, 330, 'Rafinat, versatil si distinct; carcasa neagra slefuita discret, inelul superior cu finisaje lucioase de inalta precizie si cureaua maron din piele captusita (disponibila in 2 marimi).', '/2016-03-20ProiectFinalWeb/imagini/accesorii2.png'),
	(3, 'Huawei W1 Mercury-G00 steel band', 430, 339, 'Dimensiuni carcasa: 42mm diametru, 11.3 mm grosime Rezolutie: 400x400 screen resolution, 286 ppi, 10,000:1 high contrast ratio carcasa din otel inoxidabil, ecran safir', '/2016-03-20ProiectFinalWeb/imagini/accesorii3.png'),
	(4, 'Lenovo Yoga Tab 3 10 inchi Black', 279, 49, 'display 10 inchi IPS procesor Quad-Core 1.3 GHz memorie interna 16GB', '/2016-03-20ProiectFinalWeb/imagini/accesorii4.png'),
	(5, 'Vonino Xavy T7 7 inch 4G', 100, 5, 'ecran 7 inci IPS procesor 1 GHz Quad-Core memorie interna 8 GB Android Lollipop', '/2016-03-20ProiectFinalWeb/imagini/accesorii5.png'),
	(6, 'iPad Pro 9,7 128GB', 949, 615, 'iPad Pro este mai mult decat urmatoarea generatie de iPad - este o viziune fara compromisuri asupra computerului personal din lumea moderna. Are o putere incredibila, care il plaseaza deasupra majoritatii PC-urilor portabile de pe piata. Pe acesta, chiar si cele mai complexe cerinte par la fel de naturale precum glisarea sau scrierea cu creionul.', '/2016-03-20ProiectFinalWeb/imagini/accesorii6.jpg'),
	(7, 'Baterie externa Power up 2000mah', 10, 2, '2000mah', '/2016-03-20ProiectFinalWeb/imagini/accesorii7.png'),
	(8, 'Card de memorie MicroSD ', 12, 10, '16GB', '/2016-03-20ProiectFinalWeb/imagini/accesorii8.png'),
	(9, 'Coperta Clear View Samsung Galaxy S6', 47, 42, 'Blue', '/2016-03-20ProiectFinalWeb/imagini/accesorii9.png'),
	(10, 'Mio Fuse Activity Band', 153, 100, 'Mio ofera tehnologie revolutionara de monitorizare a ritmului cardiac, a crescut intr- o companie multimilionara in dolari, cu vanzari globale si o echipa de profesionisti foarte bine antrenati. Mio considera ca toata lumea ar trebui sa aiba acces la cele mai bune instrumente de fitness pentru a sprijini obiectivele de performanta personale. Tehnologia inovatoare ofera informatii exacte pentru sportivi de toate nivelurile.', '/2016-03-20ProiectFinalWeb/imagini/accesorii10.png'),
	(11, 'Pebble Smart Watch', 134, 120, 'Alegeti din mii de aplicatii si interfete personalizate din Pebble AppStore Monitorizeaza activitatea zilnica si calitatea somnului Controleaza muzica de la o “incheietura” distanta', '/2016-03-20ProiectFinalWeb/imagini/accesorii11.png'),
	(12, 'iBaby Monitor M2', 144, 122, 'Baby Monitor Wirdless', '/2016-03-20ProiectFinalWeb/imagini/accesorii12.png');
/*!40000 ALTER TABLE `accesorii` ENABLE KEYS */;


-- Dumping structure for table 14userisiproduseaplicatiefinala.telefoane
CREATE TABLE IF NOT EXISTS `telefoane` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nume_produs` text,
  `pret` int(5) DEFAULT NULL,
  `pret_redus` int(5) DEFAULT NULL,
  `scurta_descriere` text,
  `cale_poza` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table 14userisiproduseaplicatiefinala.telefoane: ~12 rows (aproximativ)
/*!40000 ALTER TABLE `telefoane` DISABLE KEYS */;
INSERT INTO `telefoane` (`id`, `nume_produs`, `pret`, `pret_redus`, `scurta_descriere`, `cale_poza`) VALUES
	(1, 'Samsung S7', 699, 349, 'Pentru designul Galaxy S7 si S7 edge nu s-a facut niciun compromis, rezultand astfel o experienta unica de utilizare. Iar caracteristicile avansate sunt completate de aspectul elegant.', '/2016-03-20ProiectFinalWeb/imagini/samsungs7.png'),
	(2, 'iPhone SE', 469, 339, 'iPhone SE este cel mai puternic smartphone de 4" produs vreodata. Are o camera foto cu caracteristici avansate si o putere de procesare incredibila, intr-o carcasa cu un design indragit in intreaga lume. ', '/2016-03-20ProiectFinalWeb/imagini/iphone1.jpg'),
	(3, 'iPhone 6', 609, 280, 'iPhone 6 nu este doar mai mare, ci si mai bun, din toate punctele de vedere. Este mai mare, si totusi mult mai subtire. In plus, noua camera FaceTime HD de 5 MP aduce o noua stralucire zambetului tau cu func?ia Retina Flash.', '/2016-03-20ProiectFinalWeb/imagini/iphone601.jpg'),
	(4, 'LG K4', 110, 5, 'display IPS LCD Capacitiv 4,5 inci camera 5 MP 4G, Wi-Fi, Bluetooth, GPS 1 GB RAM  Este pur si simplu o placere sa le utilizezi.', '/2016-03-20ProiectFinalWeb/imagini/telefon5.png'),
	(5, 'Alcatel Onetouch 2012 (Dual Sim)', 50, 1, 'card microSD pana la 8GB 2G, bluetooth display color 2,8 inci camera foto 3 MP  Este pur si simplu o placere sa le utilizezi.', '/2016-03-20ProiectFinalWeb/imagini/telefon6.png'),
	(6, 'iPhone 6s Plus', 811, 501, 'Din primul moment în care folosesti un iPhone 6s, simti ca experimentezi ceva complet nou.  Este pur si simplu o placere sa le utilizezi. iPhone SE este cel mai puternic smartphone de 4" produs vreodata. Are o camera foto cu caracteristici avansate si o putere de procesare incredibila, intr-o carcasa cu un design indragit in intreaga lume. ', '/2016-03-20ProiectFinalWeb/imagini/telefon7.png'),
	(7, 'Samsung Galaxy A3', 200, 10, 'Samsung Galaxy A3 are o carcasa realizata integral din metal, un design inovator si un ecran sAMOLED qHD de 4.5 inci.', '/2016-03-20ProiectFinalWeb/imagini/telefon8.png'),
	(8, 'BlackBerry Priv Black', 799, 399, 'BlackBerry Priv - primul smartphone BlackBerry cu sistem de operare Android  Este pur si simplu o placere sa le utilizezi.', '/2016-03-20ProiectFinalWeb/imagini/telefon9.png'),
	(9, 'Orange Dive 30', 75, 10, 'Model Procesor: Quad-Core 1GHz Display - diagonala: 4 inchi Camera principala: 5 MP Capacitate baterie: Li-Io 1500 mAh', '/2016-03-20ProiectFinalWeb/imagini/telefon10.png'),
	(10, 'Samsung J5 (Dual Sim)', 165, 39, 'Fie ca vrei sa te uiti la un film, sa faci cumparaturi online sau sa iti verifici aplicatiile preferate, modul Ultra Saving Data cu care este echipat smartphone-ul Samsung Galaxy', '/2016-03-20ProiectFinalWeb/imagini/telefon11.png'),
	(11, 'Microsoft Lumia 550', 99, 45, 'display LCD Capacitiv, 4,7 inci, 720 x 1280 pixeli camera 5 MP 4G, Wi-Fi, Bluetooth procesor Quad-Core 1.1 GHz 1 GB RAM', '/2016-03-20ProiectFinalWeb/imagini/telefon4.png'),
	(12, 'Huawei P8lite (Dual SIM)', 189, 23, 'Avand margini slefuite cu maiestrie si o grosime de doar 7,7 mm, Huawei P8lite se potriveste perfect in mana ta. Ecranul de 5” iti ofera mai multa claritare, iar unghiurile generoase iti garanteaza o buna vizibilitate a imaginilor sau videoclipurilor.', '/2016-03-20ProiectFinalWeb/imagini/telefon12.png');
/*!40000 ALTER TABLE `telefoane` ENABLE KEYS */;


-- Dumping structure for table 14userisiproduseaplicatiefinala.utilizatori
CREATE TABLE IF NOT EXISTS `utilizatori` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `utilizator` text,
  `parola` text,
  `nume_client` text,
  `valoare_abonament` int(5) DEFAULT NULL,
  `email` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table 14userisiproduseaplicatiefinala.utilizatori: ~4 rows (aproximativ)
/*!40000 ALTER TABLE `utilizatori` DISABLE KEYS */;
INSERT INTO `utilizatori` (`id`, `utilizator`, `parola`, `nume_client`, `valoare_abonament`, `email`) VALUES
	(1, 'vlad.bancila', '1234', 'Vlad Bancila', 20, 'vlad.bancila2@yahoo.com'),
	(2, 'gabriela.bancila', '1234', 'Gabriela Bancila', 40, 'gabi.bancila@yahoo.com'),
	(3, 'rares.stefan', '1234', 'Rares Stefan', 10, 'rares.stefan@yahoo.com'),
	(4, 'alexdodu', '123456', 'Alex DoDu', 20, 'vlad.bancila@yahoo.com');
/*!40000 ALTER TABLE `utilizatori` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
