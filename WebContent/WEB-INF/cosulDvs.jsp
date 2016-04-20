<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page errorPage="Eroare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<link rel="stylesheet" href="/2016-03-20ProiectFinalWeb/css/style.css" type="text/css">
<title>Cosul Dumneavoastra de Cumparaturi</title>
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
				<li><a href="cont"><span class="glyphicon glyphicon-tent" aria-hidden="true"></span> Contul Meu </a></li>
				<li class="active"><a href="adaugaInCos"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Cos <span
						class="label label-primary">${dimensiuneCos}</span></a></li>
			</ul>
		</div>
	</div>
	</nav>

	<!-- Mesaj de bun venit utilizator sau daca e logat cu numele -->
	<div class="alert alert-danger" role="alert">
		<p class="mesajlogin">Bine ai venit${virgula} ${user.nume} !</p>
	</div>

	<!-- Afisarea produselor din cos -->
	<h1 ><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span><span class="label label-succes"></span>Continutul cosului dumneavoastra <span></span><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> </h1>

	<c:set var="i" value="0" />
	<!-- Realizam o variabila locala i = 0; -->

	<table class="table table-hover">
		<!-- Realizam un tabel cu patru coloane  -->
		<tr>
			<th class="">#ID</th>
			<th>Denumire Produs</th>
			<th class="">Pret</th>
			<th>Pret redus</th>
			<th class="">Poza</th>
			<th>Scoate produs</th>
		</tr>

		<!-- Parcurgem cu un for toate elementele din Sesiune.cos -->
		<c:forEach items="${sessionScope.cos}" var="produs">

			<!-- Daca avem user pe sesiune si abonament vom pune pretul mai mic, daca nu vom pune pretul maxim -->
			<c:if test="${user==null}">
				<c:set var="i" value="${i+produs.pret}" />
			</c:if>
			<c:if test="${user!=null}">
				<c:set var="i" value="${i+produs.pret_redus}" />
			</c:if>
			<!-- Adaugam la var i = i + pretArticol; -->

			<tr>
				<td class="danger">${produs.id}</td>
				<td class="warning">${produs.nume_prod}</td>
				<td class="danger">${produs.pret}</td>
				<td class="warning">${produs.pret_redus}</td>
				<td class="danger"><img class="imagineCos" src="${produs.cale_poza}"></td>
				<td class="warning">
					<form class="form-inline centru" action="remove" method="post">
						<button type="submit" name="id" value="${produs.id}" class="btn btn-primary" data-toggle="tooltip" data-placement="bottom"
							title="Apasa pentru scoatere produsul din lista !">
							<span class="glyphicon glyphicon-minus"></span> Scoate produs
						</button>
					</form>
				</td>
			</tr>

		</c:forEach>


	</table>
	<div class="alert alert-warning" role="alert">
		<strong><p class="text-right">Produsele adaugate in cosul dumneavoastra valoreaza: ${i} Euro.</p></strong>
	</div>

	<a href="telefoane" class="btn btn-primary btn-lg active" role="button"><span class="glyphicon glyphicon-phone"></span> Continua cumparaturile de telefoane.</a>

	<a href="accesorii" class="btn btn-primary btn-lg active" role="button"><span class="glyphicon glyphicon-sunglasses"></span> Continua cumparaturile de accesorii.</a>

	<a href="#" class="btn btn-success btn-lg active" role="button"> Plateste <span class="glyphicon glyphicon-euro"></span></a>


	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.1/jquery.min.js"></script>

	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
	<script>
		$(function() {
			$('[data-toggle="tooltip"]').tooltip()
		})
	</script>

</body>
</html>