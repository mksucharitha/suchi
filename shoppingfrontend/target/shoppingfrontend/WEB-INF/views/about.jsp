<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>MY WEBPAGE</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	 <link href='https://fonts.googleapis.com/css?family=Dancing+Script' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Playfair+Display:400italic' rel='stylesheet' type='text/css'>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
h1 {
font-family: 'Pacifico', cursive;
	font-size: 80px;
	color:#EE9A4D;
}
   h2{
   font-family: 'Playfair Display', serif;
   font-size:40px;
   color:#954535;
   
   }

body {
	background-color:#98AFC7;
	padding:50px;
	padding-top:0;
}
ul {
	list-style-type: none;
	margin: 0;
	padding-left:20px;
	background-color: #b8375c;
}

li a {
font-family: 'Dancing Script', cursive;
	font-size: 30px;
	color: white;
	padding:50px;
	text-decoration: none;
}

.h2 small {
 font-family: 'Playfair Display', serif;
font-size: 24px;
color:black;
}
.carousel-inner>.item>img{
width:640px;
 height:360px; 

} .carousel-inner>.item>a>img {
	margin: auto;
}
.footer{
text-align:left;
font-size:20px;
}
</style>
</head>
<body>
	
	<div align="center">
		<h1>
			<i>Chocos-world</i>
		</h1>

		<ul class="nav nav-pills">
			<li><a class="active" href="#"><span
						class="glyphicon glyphicon-home"></span>home</a></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> categories <span class="caret"></span></a>
				<ul class="dropdown-menu" role="menu">
					<li><a href="#">dark choclates</a></li>
					<li><a href="#">couverature</a></li>
					<li><a href="#">milk choclates</a></li>
				</ul></li>
			<li><a href="contact">Contact</a></li>
			<li><a href="about">About us</a></li>
			<ul class="nav navbar-nav navbar-right">
				<u1 class="nav nav-pills">
				<li><a href="login"><span
						class="glyphicon glyphicon-log-in"></span> login</a></li>
				<li><a href="reg"><span class="glyphicon glyphicon-user"></span> newuser</a></li>
			</ul>
			</u1>
		</ul>


	</div>
<h2>ABOUT US </h2>
<P class="lead">chocos-world is a best online shoppping for chocolates in the world.In these we have different varietes of chocolates.My products are fresh,good quality,
                       and reasonable prices.cash and delivery also available.
                       <div class="container">
		<font color="black"> <br>
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">

					<div class="item active">
						<img class="img-responsive center-block" src=<c:url value="/resources/images/ab1.jpg"/>
							>
						
					</div>

					<div class="item">
						<img class="img-responsive center-block" src=<c:url value="/resources/images/ab2.jpg"/>
							alt="white choclates" width="320" height="240">
						
					</div>

					<div class="item">
						<img class="img-responsive center-block" src=<c:url value="/resources/images/ab3.jpg"/>
							alt="cadbury choclates" width="320" height="240">
						
					</div>
				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</font>
<footer>
<div class="navbar-right" color="white">
© 2016 - All Rights with Chocos-world
</div>