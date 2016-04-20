<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page errorPage="Eroare.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<link rel="stylesheet" href="/2016-03-20ProiectFinalWeb/css/style2.css" type="text/css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Contul Meu</title>


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
						<li><a href="special"><span class="glyphicon glyphicon-gift"></span> Oferte Speciale</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="telefoane"><span class="glyphicon glyphicon-phone"></span> Telefoane</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="accesorii"><span class="glyphicon glyphicon-sunglasses"></span> Accesorii</a></li>
					</ul></li>
				<li><a href="contact"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> Contact<span class="sr-only"></span></a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="cont"><span class="glyphicon glyphicon-tent" aria-hidden="true"></span> Contul Meu </a></li>
				<li><a href="adaugaInCos"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Cos <span class="label label-primary">${dimensiuneCos}</span></a></li>
			</ul>
		</div>
	</div>
	</nav>

	<!-- Mesaj de bun venit utilizator sau daca e logat cu numele -->
	<div class="alert alert-danger" role="alert">
		<p class="mesajlogin">Bine ai venit${virgula} ${user.nume} !</p>
	</div>

	<!-- Imagini de primire stanga dreapta   -->
	<img class="imagineStangaLogin" src="/2016-03-20ProiectFinalWeb/imagini/doing.png">
	<img class="imagineDreaptaLogin" src="/2016-03-20ProiectFinalWeb/imagini/milidge.png">

	<!-- Acces atunci cand userul este logat -->
	<c:if test="${mesaj}">
		<h1>
			<span class="label label-succes">Autentificare cu succes</span>
		</h1>
		<h1>
			<span class="label label-succes">Bine ai venit, ${user.nume} !</span>
		</h1>

		<!-- Afisam numai daca userul are abonament -->
		<c:if test="${user.valoareAbonament!='0'}">
			<h1>
				<span class="label label-succes">Ai un abonament in valoare de: ${user.valoareAbonament} euro!</span>
			</h1>
			<h1>
				<span class="label label-succes">Beneficiaza de preturile noastre speciale pentru abonati!</span>
			</h1>
		</c:if>
		<!-- Afisam numai daca userul nu are abonament selecteaza abonamentul dorit-->
		<c:if test="${user.valoareAbonament=='0'}">
			<h1>
				<span class="label label-succes">Selecteaza unul din abonamentele de mai jos,</span>
			</h1>
			<h1>
				<span class="label label-succes"> pentru a beneficia de promotii!</span>
			</h1>
			<div class="col-md-4">
			<form action="home" method="post">
			<input type="hidden" name="valoare" value="10"> <span class="label label-primary big"><input type="submit" value="Selecteaza abonement 10 euro"></span>
			</form>
			<form action="home" method="post">
			<input type="hidden" name="valoare" value="20"> <span class="label label-primary big"><input type="submit" value="Selecteaza abonement 20 euro"></span>
			</form>
			<form action="home" method="post">
			<input type="hidden" name="valoare" value="40"> <span class="label label-primary big"><input type="submit" value="Selecteaza abonement 40 euro"></span>
			</form>	
				</div>
		</c:if>
		
		<form action="home" method="get">
			<div class="container butonHome">
				<a href="home" class="btn btn-primary btn-lg"> <span class="glyphicon glyphicon-home"></span> Pagina Home
				</a>
			</div>
		</form>
		<form action="invalidare" method="post">
			<div class="container butonHome">
				<a href="invalidare" class="btn btn-primary btn-lg"> <span class="glyphicon glyphicon-log-out"></span> Log out
				</a>
			</div>
		</form>
	</c:if>

	<!-- Acces atunci cand userul nu este logat ! -->
	<c:if test="${!mesaj}">
		<div class="container">
			<div class="row">
				<div class="col-md-12 formularlogin">
					<h1>
						<span class="label label-primary">Autentificare</span>
					</h1>
					<form class="form-inline centru" action="login" method="post">
						<div class="form-group">
							<label class="sr-only" for="exampleInputEmail3">User</label> <input type="text" name="user" class="form-control" id="user" placeholder="Utilizator"
								data-toggle="tooltip" data-placement="bottom" title="Introduceti usernam-ul dumneavoastra!">
						</div>
						<div class="form-group">
							<label class="sr-only" for="exampleInputPassword3">Password</label> <input type="password" name="parola" class="form-control" id="parola"
								placeholder="Parola" data-toggle="tooltip" data-placement="bottom" title="Introduceti parola!">
						</div>
						<button type="submit" class="btn btn-primary" data-toggle="tooltip" data-placement="bottom" title="Apasa pentru logare!">Logare</button>
					</form>
					<p></p>
					<p></p>
					<p>
						<span class="label label-info"><a class="sign_up" href="sign-up">Nu ai cont? Click aici pentru inregistrare!</a></span>
					</p>
				</div>
			</div>
		</div>
		<h2>
			<span class="label label-danger ">${raspunsLogare}</span>
		</h2>



	</c:if>





	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.1/jquery.min.js"></script>

	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

	<!-- Acesta este un script pentru a activa mesajele hover deasupra campurilor de completat -->
	<script>
		$(function() {
			$('[data-toggle="tooltip"]').tooltip()
		})
	</script>
</body>
</html>