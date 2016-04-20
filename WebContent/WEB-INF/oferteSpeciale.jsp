<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page errorPage="Eroare.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<link rel="stylesheet" href="/2016-03-20ProiectFinalWeb/css/style2.css" type="text/css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>Oferte Speciale</title>
</head>
<body>

	<!-- Acesta este meniul principal cu dropdown si logo -->
	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<img class="imaginelogo" alt="Imagine logo" src="/2016-03-20ProiectFinalWeb/imagini/orangeLogo.jpg"> <a class="navbar-brand" href="#"> Orange </a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="home"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home<span class="sr-only">(current)</span></a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span
						class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> Descopera Magazinul<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="active"><a href="#"><span class="glyphicon glyphicon-gift"></span> Oferte Speciale</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="telefoane"><span class="glyphicon glyphicon-phone"></span> Telefoane</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="accesorii"><span class="glyphicon glyphicon-sunglasses"></span> Accesorii</a></li>
					</ul></li>
				<li><a href="contact"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> Contact<span class="sr-only"></span></a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="cont"><span class="glyphicon glyphicon-tent" aria-hidden="true"></span> Contul Meu </a></li>
				<li><a href="adaugaInCos"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Cos <span class="label label-primary">${dimensiuneCos}</span></a></li>
			</ul>
		</div>
	</div>
	</nav>

	<!-- Mesaj de bun venit utilizator sau daca e logat cu numele -->
	<div class="alert alert-danger" role="alert">
		<p class="mesajlogin">Bine ai venit${virgula} ${user.nume} !</p>
	</div>

	<h1>Aici gasesi ultimile oferte in domeniul telefoanelor !</h1>

	<!-- Prezentarea produselor din gama oferte speciale -->
	<!-- Produsul 1 -->

	<div class="row">
		<div class="col-sm-12 col-md-12">
			<div class="thumbnail">
				<div class="col-md-6 col-md-offset-2">
					<h3 class="titluoferta">iPhone SE</h3>
				</div>
				<img src="/2016-03-20ProiectFinalWeb/imagini/iphone1.jpg">
				<div class="caption">
					<h3>Descriere generala :</h3>
					<p class="centruoferta">iPhone SE este cel mai puternic smartphone de 4" produs vreodata. Are o camera foto cu caracteristici avansate si o putere de
						procesare incredibila, intr-o carcasa cu un design indragit in intreaga lume. Este un pas mare pentru un telefon de mici dimensiuni.</p>

					<!-- Descriere visuala imagini-->

					<div class="row">
						<div class="col-sm-6 col-md-4">
							<div class="thumbnail">
								<img src="/2016-03-20ProiectFinalWeb/imagini/iphone2.png">
								<div class="caption">
									<h3>Co-procesor de miscare super-eficient M9.</h3>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-4">
							<div class="thumbnail">
								<img src="/2016-03-20ProiectFinalWeb/imagini/iphone3.png">
								<div class="caption">
									<h3>Singura camera de care vei avea nevoie.</h3>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-4">
							<div class="thumbnail">
								<img src="/2016-03-20ProiectFinalWeb/imagini/iphone4.jpg">
								<div class="caption">
									<h3>Touch ID Securitate avansata. La varful degetului.</h3>
								</div>
							</div>
						</div>
					</div>


					<!-- Buton Java Script Detalii -->
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg1">Apasa aici pentru mai multe detalii !</button>

					<div class="modal fade bs-example-modal-lg1" tabindex="0" role="dialog" aria-labelledby="myLargeModalLabel1">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<table class="table">
									<div class="row">
										<th class="info"><img src="/2016-03-20ProiectFinalWeb/imagini/t1.png" class="imaginetabeloferta"> DISPLAY</th>
									</div>
									<tr class="success">
										<td>Display - diagonala: 4"</td>
										<td>Display - rezolutie: 640 x 1136 pixeli</td>
										<td>Display - tehnologie: Retina</td>
										<td>Display curbat: nu</td>
									</tr>

									<th class="info"><img class="imaginetabeloferta" src="/2016-03-20ProiectFinalWeb/imagini/t3.png"> CAMERA</th>
									<tr class="success">
										<td>Camera principala: 12 MP</td>
										<td>Camera frontala: 1,2 MP</td>
										<td>Inregistrare video: da, 1080 p</td>
										<td>Flash: da</td>
									</tr>

									<th class="info"><img class="imaginetabeloferta" src="/2016-03-20ProiectFinalWeb/imagini/t2.png"> PERFORMANTA</th>
									<tr class="success">
										<td>Model Procesor: Apple A9 64-bit</td>
										<td>Sistem de operare: iOS 9</td>
										<td>Spatiu de stocare: 16 GB</td>
									</tr>

									<th class="info"><img class="imaginetabeloferta" src="/2016-03-20ProiectFinalWeb/imagini/t4.png">CARACTERISTICI</th>
									<tr class="success">
										<td>Senzor Touch ID</td>
										<td>Apel video Face Time</td>
									</tr>

									<th class="info"><img class="imaginetabeloferta" src="/2016-03-20ProiectFinalWeb/imagini/t5.png"> BATERIE</th>
									<tr class="success">
										<td>Autonomie in convorbire: pana la 10 ore (in 3G)</td>
										<td>Autonomie in stand by time: pana la 250 de ore</td>
										<td>Baterie detasabila: nu</td>
										<td>Tip mufa incarcare: lightning</td>
									</tr>

									<th class="info"><img class="imaginetabeloferta" src="/2016-03-20ProiectFinalWeb/imagini/t6.png"> CONECTIVITATE RETEA</th>
									<tr class="success">
										<td>conectivitate/viteza: 4G</td>
										<td>Wi-Fi: da</td>
										<td>Bluetooth: da, 4,2</td>
										<td>Modul GPS: da</td>
									</tr>

									<th class="info"><img class="imaginetabeloferta" src="/2016-03-20ProiectFinalWeb/imagini/t7.png"> ALTELE</th>
									<tr class="success">
										<td>Dimensiuni: 123.8 x 58.6 x 7.6 mm</td>
										<td>Greutate: 113 g</td>
										<td>Tip SIM utilizat: nanoSIM</td>
										<td>Blocat in reteaua Orange: da</td>
									</tr>

								</table>
							</div>
						</div>
					</div>

					<!-- Buton experimental Video Perfect Functional link: https://www.youtube.com/watch?v=YjGMgQ-Sosw -->
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lgvideo1">Video descriere !</button>

					<div class="modal fade bs-example-modal-lgvideo1" tabindex="0" role="dialog" aria-labelledby="myLargeModalLabelv">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<div class="embed-responsive embed-responsive-16by9">
									<iframe class="embed-responsive-item" src="//www.youtube.com/embed/YjGMgQ-Sosw?rel=0" allowfullscreen></iframe>
								</div>
							</div>
						</div>
					</div>

					<!--Buton Cumpara acest produs -->
					<div class="col-md-12 ">
						<form action="special" method="get">
							<div class="container butonHome">
								<a href="telefoane" class="btn btn-primary btn-lg"> <span class="glyphicon glyphicon-shopping-cart"></span> Cumpara iPhone SE
								</a>
							</div>
						</form>
					</div>
					<h1></h1>
					<h1>Pret standard: 469 Euro.</h1>
					<h1>Pret cu abonament: 339 Euro.</h1>
					<h1></h1>
				</div>

			</div>
		</div>
	</div>
	<h1></h1>
	<h1></h1>
	<h1></h1>
	<!-- Produsul 2 -->
	<div class="row">
		<div class="col-sm-12 col-md-12">
			<div class="thumbnail">
				<div class="col-md-6 col-md-offset-2">
					<h3 class="titluoferta">SAMSUNG S7 AND S7 EDGE</h3>
				</div>
				<img src="/2016-03-20ProiectFinalWeb/imagini/samsungs7.png">
				<div class="caption">
					<h3>Descriere generala :</h3>
					<p class="centruoferta">Pentru designul Galaxy S7 si S7 edge nu s-a facut niciun compromis, rezultand astfel o experienta unica de utilizare. Iar
						caracteristicile avansate sunt completate de aspectul elegant. Este pur si simplu o placere sa le utilizezi.</p>

					<!-- Descriere visuala imagini-->

					<div class="row">

						<div class="col-sm-6 col-md-4">
							<div class="thumbnail">
								<img src="/2016-03-20ProiectFinalWeb/imagini/samsung02.png">
								<div class="caption">
									<h3>Smart Switch. Telefonul este important tocmai datorita fotografiilor, fisierelor si datelor aflate pe el. Transfera tot ceea ce ai nevoie din
										telefonul vechi pe Galaxy S7 sau S7 edge cu aplicatia Samsung Smart Switch. Este incredibil de usor. * Disponibilitatea serviciilor poate varia in
										functie de dispozitiv. Conectorul USB este inclus tn cutie.</h3>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-4">
							<div class="thumbnail">
								<img src="/2016-03-20ProiectFinalWeb/imagini/samsung01.jpg">
								<div class="caption">
									<h3>Experienta jocurilor pe mobil este acum mult imbunatatita. Galaxy S7 si S7 edge vin echipate cu un centru de control special pentru jocuri ti
										functii dedicate, cum ar fi inregistrarea in timpul jocului.</h3>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-4">
							<div class="thumbnail">
								<img src="/2016-03-20ProiectFinalWeb/imagini/samsung03.jpg">
								<div class="caption">
									<h3>Rezistent la apa si praf. Folosind materiale performante, pentru realizarea Galaxy S7 si S7 edge s-a dezvoltat o metoda simpla, dar eficienta,
										de sigilare completa a componentelor interioare, mentinând deschise porturile USB si mufele pentru casti. Nu vei mai avea nevoie de capace sau huse
										suplimentare.</h3>
								</div>
							</div>
						</div>
					</div>


					<!-- Buton Java Script Detalii -->
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg2">Apasa aici pentru mai multe detalii !</button>

					<div class="modal fade bs-example-modal-lg2" tabindex="0" role="dialog" aria-labelledby="myLargeModalLabel2">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<table class="table">
									<div class="row">
										<th class="info"><img src="/2016-03-20ProiectFinalWeb/imagini/t1.png" class="imaginetabeloferta"> DISPLAY</th>
									</div>
									<tr class="success">
										<td>Display - diagonala: 5.1"</td>
										<td>Display - rezolutie: QHD, 1440 x 2560 pixeli</td>
										<td>Display - tehnologie: Super Amoled</td>
										<td>Display curbat: nu</td>
									</tr>

									<th class="info"><img class="imaginetabeloferta" src="/2016-03-20ProiectFinalWeb/imagini/t3.png"> CAMERA</th>
									<tr class="success">
										<td>Camera principala: dual pixel 12 MP</td>
										<td>Camera frontala: 5 MP</td>
										<td>Inregistrare video: da</td>
										<td>Flash: da</td>
									</tr>

									<th class="info"><img class="imaginetabeloferta" src="/2016-03-20ProiectFinalWeb/imagini/t2.png"> PERFORMANTA</th>
									<tr class="success">
										<td>Model Procesor: Samsung Exynos 8890</td>
										<td>Numar nuclee: 8</td>
										<td>Frecventa maxima: 2.3 GHz x 4 + 1.6 GHz x 4</td>
										<td>Sistem de operare: Android M</td>
										<td>Memorie RAM: 4 GB DDR4</td>
										<td>Spatiu de stocare: 32 GB</td>
										<td>Slot card memorie: micro SD pana la 200GB</td>
									</tr>

									<th class="info"><img class="imaginetabeloferta" src="/2016-03-20ProiectFinalWeb/imagini/t4.png">CARACTERISTICI</th>
									<tr class="success">
										<td>Rezistent apa si praf IP68</td>
										<td>Senzor amprenta</td>
										<td>Fast charging</td>
										<td>Wireless charging</td>
									</tr>

									<th class="info"><img class="imaginetabeloferta" src="/2016-03-20ProiectFinalWeb/imagini/t5.png"> BATERIE</th>
									<tr class="success">
										<td>Capacitate baterie: 3000 mAh</td>
										<td>Tip mufa incarcare: micro USB</td>
										<td>Baterie detasabila: nu</td>
										<td>Wireless charging: da</td>
									</tr>

									<th class="info"><img class="imaginetabeloferta" src="/2016-03-20ProiectFinalWeb/imagini/t6.png"> CONECTIVITATE RETEA</th>
									<tr class="success">
										<td>conectivitate/viteza: 4G+ (450mbps) CAT9</td>
										<td>Wi-Fi: da</td>
										<td>Bluetooth: da</td>
										<td>Modul GPS: da</td>
									</tr>

									<th class="info"><img class="imaginetabeloferta" src="/2016-03-20ProiectFinalWeb/imagini/t7.png"> ALTELE</th>
									<tr class="success">
										<td>Dimensiuni: 142 x 69.6 x 7.9 mm</td>
										<td>Greutate: 152 g</td>
										<td>Tip SIM utilizat: nano-SIM</td>
										<td>Blocat in reteaua Orange: nu</td>
									</tr>

								</table>
							</div>
						</div>
					</div>
					
					<!-- Buton experimental Video Perfect Functional link: https://www.youtube.com/watch?v=cyohHyQl-kc -->
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lgvideo2">Video descriere !</button>

					<div class="modal fade bs-example-modal-lgvideo2" tabindex="0" role="dialog" aria-labelledby="myLargeModalLabelv">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<div class="embed-responsive embed-responsive-16by9">
									<iframe class="embed-responsive-item" src="//www.youtube.com/embed/cyohHyQl-kc?rel=0" allowfullscreen></iframe>
								</div>
							</div>
						</div>
					</div>					
					
					<!-- Buton de cumparare produs -->
					<div class="col-md-12 ">
						<form action="special" method="get">
							<div class="container butonHome">
								<a href="telefoane" class="btn btn-primary btn-lg"> <span class="glyphicon glyphicon-shopping-cart"></span> Cumpara Samsung S7
								</a>
							</div>
						</form>
					</div>
					<h1></h1>
					<h1>Pret standard: 699 Euro.</h1>
					<h1>Pret cu abonament: 349 Euro.</h1>
					<h1></h1>
				</div>

			</div>
		</div>
	</div>
	<h1></h1>
	<h1></h1>
	<h1></h1>

	<!-- Produsul 3 -->
	<div class="row">
		<div class="col-sm-12 col-md-12">
			<div class="thumbnail">
				<div class="col-md-6 col-md-offset-2">
					<h3 class="titluoferta">iPhone 6</h3>
				</div>
				<img src="/2016-03-20ProiectFinalWeb/imagini/iphone601.jpg">
				<div class="caption">
					<h3>Descriere generala :</h3>
					<p class="centruoferta">iPhone 6 nu este doar mai mare, ci si mai bun, din toate punctele de vedere. Este mai mare, si totusi mult mai subtire. Mai
						puternic, dar cu un consum de energie mult mai redus. Are o carcasa metalica ce completeaza perfect noul ecran Multi-Touch - cel mai avansat de pana acum.
						Este un iPhone dintr-o noua generatie, superioara in toate privintele.</p>

					<!-- Descriere visuala imagini-->

					<div class="row">

						<div class="col-sm-6 col-md-4">
							<div class="thumbnail">
								<img src="/2016-03-20ProiectFinalWeb/imagini/iphone603.jpg">
								<div class="caption">
									<h3>Camera HD de 1080p are acum un sistem de focalizare automata mai rapid si, in plus, iti permite sa inregistrezi clipuri in slow-motion, la 240
										cadre/secunda.</h3>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-4">
							<div class="thumbnail">
								<img src="/2016-03-20ProiectFinalWeb/imagini/iphone605.jpg">
								<div class="caption">
									<h3>Carcasa metalica, din aluminiu, se imbina perfect cu suprafata de sticla a ecranului. Astfel, desi este mai mare, iPhone 6 incape perfect in
										mana.</h3>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-4">
							<div class="thumbnail">
								<img src="/2016-03-20ProiectFinalWeb/imagini/iphone604.jpg">
								<div class="caption">
									<h3>Sistemul de operare avansat al iPhone 6 este optimizat acum pentru un ecran mai mare si dotat cu noi functionalitati.</h3>
								</div>
							</div>
						</div>
					</div>


					<!-- Buton Java Script Detalii -->
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg3">Apasa aici pentru mai multe detalii !</button>

					<div class="modal fade bs-example-modal-lg3" tabindex="0" role="dialog" aria-labelledby="myLargeModalLabel2">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<table class="table">
									<div class="row">
										<th class="info"><img src="/2016-03-20ProiectFinalWeb/imagini/t1.png" class="imaginetabeloferta"> DISPLAY</th>
									</div>
									<tr class="success">
										<td>Display - diagonala: 4,7"</td>
										<td>Display - rezolutie: 1334 x 750 pixeli</td>
										<td>Display - tehnologie: retina HD, 326 ppi</td>
										<td>Display curbat: nu</td>
									</tr>

									<th class="info"><img class="imaginetabeloferta" src="/2016-03-20ProiectFinalWeb/imagini/t3.png"> CAMERA</th>
									<tr class="success">
										<td>Camera principala: 8 MP</td>
										<td>Inregistrare video: HD, 1080 p</td>
										<td>Flash: da</td>
									</tr>

									<th class="info"><img class="imaginetabeloferta" src="/2016-03-20ProiectFinalWeb/imagini/t2.png"> PERFORMANTA</th>
									<tr class="success">
										<td>Model Procesor: Apple A8</td>
										<td>Sistem de operare: iOS 8</td>
										<td>Spatiu de stocare: 16 GB</td>
									</tr>

									<th class="info"><img class="imaginetabeloferta" src="/2016-03-20ProiectFinalWeb/imagini/t4.png">CARACTERISTICI</th>
									<tr class="success">
										<td>Senzor amprenta</td>
									</tr>

									<th class="info"><img class="imaginetabeloferta" src="/2016-03-20ProiectFinalWeb/imagini/t5.png"> BATERIE</th>
									<tr class="success">
										<td>Autonomie in convorbire: pana la 14 ore</td>
										<td>Autonomie in stand by time: pana la 250 ore</td>
										<td>Baterie detasabila: nu</td>
									</tr>

									<th class="info"><img class="imaginetabeloferta" src="/2016-03-20ProiectFinalWeb/imagini/t6.png"> CONECTIVITATE RETEA</th>
									<tr class="success">
										<td>conectivitate/viteza: 4G+</td>
										<td>Wi-Fi: da</td>
										<td>Bluetooth: da</td>
										<td>Modul GPS: da</td>
									</tr>

									<th class="info"><img class="imaginetabeloferta" src="/2016-03-20ProiectFinalWeb/imagini/t7.png"> ALTELE</th>
									<tr class="success">
										<td>Tip SIM utilizat: tableta</td>
									</tr>

								</table>
							</div>
						</div>
					</div>
					
					<!-- Buton experimental Video Perfect Functional link: https://www.youtube.com/watch?v=cSTEB8cdQwo -->
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lgvideo3">Video descriere !</button>

					<div class="modal fade bs-example-modal-lgvideo3" tabindex="0" role="dialog" aria-labelledby="myLargeModalLabelv">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<div class="embed-responsive embed-responsive-16by9">
									<iframe class="embed-responsive-item" src="//www.youtube.com/embed/cSTEB8cdQwo?rel=0" allowfullscreen></iframe>
								</div>
							</div>
						</div>
					</div>	
					
					<!--Buton Cumpara acest produs -->
					<div class="col-md-12 ">
						<form action="special" method="get">
							<div class="container butonHome">
								<a href="telefoane" class="btn btn-primary btn-lg"> <span class="glyphicon glyphicon-shopping-cart"></span> Cumpara iPhone 6
								</a>
							</div>
						</form>
					</div>
					<h1></h1>
					<h1>Pret standard: 609 Euro.</h1>
					<h1>Pret cu abonament: 280 Euro.</h1>
					<h1></h1>
				</div>

			</div>
		</div>
	</div>








	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>

	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>