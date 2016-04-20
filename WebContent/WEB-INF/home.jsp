<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page errorPage="Eroare.jsp"%>

<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<link rel="stylesheet" href="/2016-03-20ProiectFinalWeb/css/style.css" type="text/css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Magazin Home</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>

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
					<li class="active"><a href="#"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home<span class="sr-only">(current)</span></a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span
							class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> Descopera Magazinul<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="special"><span class="glyphicon glyphicon-gift"></span> Oferte Speciale</a></li>
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

	<!-- Acesta este meniul de tip carusel cu 5 imagini ce se rotesc -->
	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel" data-interval="3000">
		<!-- Interval rotire 3 secunde -->
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			<li data-target="#carousel-example-generic" data-slide-to="3"></li>
			<li data-target="#carousel-example-generic" data-slide-to="4"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img class="imagineSlider" src="/2016-03-20ProiectFinalWeb/imagini/01Slider.png" alt="prima imagine din slider">
				<div class="container">
					<div class="row">
						<div class="col-sm-6 info">
							<div class="carousel-caption">
								<p class="textSlider">
									<img class="imagineInternSlider" src="/2016-03-20ProiectFinalWeb/imagini/samsungDescription.png">
								</p>
								<p class="textSlider">Regandeste rolul telefonului.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="imagineSlider" src="/2016-03-20ProiectFinalWeb/imagini/02Slider.png">
				<div class="container">
					<div class="row">
						<div class="col-sm-6 info">
							<div class="carousel-caption">
								<p class="textSlider">
									<img class="imagineInternSlider" src="/2016-03-20ProiectFinalWeb/imagini/iphoneDescription.png">
								</p>
								<p class="textSlider">Gandire de avangarda.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="imagineSlider" src="/2016-03-20ProiectFinalWeb/imagini/03Slider.jpg">
				<div class="container">
					<div class="row">
						<div class="col-sm-6 info">
							<div class="carousel-caption">
								<p class="textSlider">
									<img class="imagineInternSlider" src="/2016-03-20ProiectFinalWeb/imagini/pebleDescription.png">
								</p>
								<p class="textSlider">Pebble Time Round</p>
								<p class="textSlider">Cel mai usor si mai subtire smartwatch</p>
								<p class="textSlider">In exclusivitate la Orange</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="imagineSlider" src="/2016-03-20ProiectFinalWeb/imagini/04Slider.jpg">
				<div class="container">
					<div class="row">
						<div class="col-sm-6 info">
							<div class="carousel-caption">
								<p class="textSlider">HP Chromebook Descopera HP Chromebook</p>
								<p class="textSlider">Cu sistem de operare ultrarapid Chrome.</p>
								<p class="textSlider">Un laptop subtire si elegant.</p>
								<p class="textSlider">Cu ajutorul caruia te bucuri de toate avantajale Google.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="imagineSlider" src="/2016-03-20ProiectFinalWeb/imagini/05Slider.jpg">
				<div class="container">
					<div class="row">
						<div class="col-sm-6 info">
							<div class="carousel-caption">
								<p class="textSlider">
									<img class="imagineInternSlider" src="/2016-03-20ProiectFinalWeb/imagini/logo_iphonese_large.png">
								</p>
								<p class="textSlider">iPhone SE este cel mai puternic smartphone de 4" produs vreodata.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right"
			aria-hidden="true"></span> <span class="sr-only">Next</span>
		</a>
	</div>

	<!-- Continutul paginii home + link catre pagina de oferte -->
	<h1></h1>
	<h1>
		<span class="label label-succes">Magazinul tuturor gadgeturilor !</span>
	</h1>
	<h2></h2>
	<div class="container">
		<div class="row">
			<div class="col-sm-3">
				<div class="thumbnail">
					<img class="imagineReclama" alt="" src="/2016-03-20ProiectFinalWeb/imagini/orange-acasa.png">
				</div>
			</div>
			<div class="col-sm-3">
				<div class="thumbnail">
					<img class="imagineReclama" alt="" src="/2016-03-20ProiectFinalWeb/imagini/orange-distractie.png">
				</div>
			</div>
			<div class="col-sm-3">
				<div class="thumbnail">
					<img class="imagineReclama" alt="" src="/2016-03-20ProiectFinalWeb/imagini/orange-in-miscare.png">
				</div>
			</div>
			<div class="col-sm-3">
				<div class="thumbnail">
					<img class="imagineReclama" alt="" src="/2016-03-20ProiectFinalWeb/imagini/orange-familie.png">
				</div>
			</div>
		</div>
	</div>

	<h1>
		<span class="glyphicon glyphicon-arrow-down"></span><span class="label label-succes ">Intra aici si descopera ultimile noastre oferte !</span><span
			class="glyphicon glyphicon-arrow-down"></span>
	</h1>
	<h2></h2>
	<form action="special" method="get">
		<div class="container butonHome">
			<a href="special" class="btn btn-primary btn-lg"> <span class="glyphicon glyphicon-gift"></span> Descopera Ofertele Speciale
			</a>
		</div>
	</form>
	<h2></h2>
	<h2></h2>
	
	<!-- Acest script este necesar pentru a avertiza utilizatorul paginii ca are nevoie de cookies si Java Script -->
	<!--  Putem utiliza localStorege si avem obiectul salvat permanent, se sterge cu localStorage.removeItem(""); sau sessionStorage pentru o singura sesiune -->
	<!-- cu session storege se va reafisa mesajul de fiecare data cand deschidem pagina dinou(browserul) -->
	<script type="text/javascript">
    var alerted = sessionStorage.getItem('alerta') || '';
    if (alerted != 'yes') {
     alert("Pentru o buna functionare a paginii web va rugam sa permiteti salvarea de cookies pe calculatorul dvs. si sa activati Java Script!");
     sessionStorage.setItem('alerta','yes');
    }
	</script>

	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.1/jquery.min.js"></script>

	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>