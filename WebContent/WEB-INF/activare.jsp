<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page errorPage="Eroare.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<link rel="stylesheet" href="/2016-03-20ProiectFinalWeb/css/style.css" type="text/css">

<title>Insert title here</title>
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


	<h1>
		<span class="label label-success glyphicon glyphicon-ok-circle"> ${mesajSuccesSignUp}</span>
	</h1>

	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.1/jquery.min.js"></script>

	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>