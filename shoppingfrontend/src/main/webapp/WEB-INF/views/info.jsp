<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>

<title>MY WEBPAGE</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
 <link href='https://fonts.googleapis.com/css?family=Dancing+Script' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Playfair+Display:400italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300italic' rel='stylesheet' type='text/css'>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<!-- 	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular.min.js"></script> -->

<style>
h1 {
font-family: 'Pacifico', cursive;
	font-size: 80px;
	color:#C35817;
}
h2{
   font-family: 'Open Sans Condensed', sans-serif;
   font-size:30px;
   color:#8D38C9;
   
   }
body {
	background-image:url("resources/images/v1.jpg");
	 background-repeat: no-repeat;
    background-attachment: fixed;
   -webkit-background-size: cover;
-moz-background-size: cover;
-o-background-size: cover;
background-size: cover; 
	padding:50px;
	padding-top:0;
}

ul {
	list-style-type: none;
	margin: 0;
	padding-left:20px;
	background-color:#b8375c;
}

li a {
font-family: 'Dancing Script', cursive;
	font-size:30px;
	color: white;
	padding:50px;
	text-decoration: none;
}


</style>
</head>
<body>
<center>
		<h1>
			<i>Chocos-world</i>
		</h1>
</center>
<center><h2>${welcome1}</h2></center>
<center><h2>${welcome}</h2></center>
<center><h2>${logout}</h2></center>
<center><h2>${signout}</h2></center>
	<div class="container-fluid">
		<ul class="nav nav-pills">
			<li><a href="mainpage"><span
					class="glyphicon glyphicon-home"></span>home</a></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> categories <span class="caret"></span></a>
				<ul class="dropdown-menu" role="menu">
					<li><a href="mainview?catname=darkchoclates">dark choclates</a></li>
					<li><a href="mainview?catname=semisweet choclates">semisweet choclates</a></li>
					<li><a href="mainview?catname=milk chocolates">milk choclates</a></li>
				</ul></li>
			<li><a href="contact">Contact</a></li>
			<li><a href="about">About us</a></li>
			
			
			<ul class="nav navbar-nav navbar-right">
			
				<u1 class="nav nav-pills">
				<c:choose>
             <c:when test="${empty loggedInUser}">  
				
				<li><a href="login"><span
						class="glyphicon glyphicon-log-in"></span> login</a></li>
				<li><a href="reg"><span class="glyphicon glyphicon-user"></span> newuser</a></li>
				</c:when>  

 <c:when test="${not empty loggedInUser}">
      
      <li><a href="logout"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
 

      </c:when>
      </c:choose> 
			</ul>
		</ul>
	</div>
	<br>
	<br>

	<c:forEach items="${pinfo}" var="products">
	 <div class=col-sm-3> 
	<div class="items">
	    <img class="img-responsive" src=<c:url value="/resources/images/${products.id}.jpg"/>
							 width="240" height="240">
						
	
	</div>
	</div>
	 <div class=col-sm-8>
	<br><b>NAME:</b>${products.name}<br>
	<br><b>DESCRIPTION:</b>${products.description}<br>
	<br><b>PRICE:</b>${products.price}<br>
	<br><b>CATEGORY:</b>${products.cat.id}<br>
	<br><b>SUPPLIER:</b>${products.sup.id}<br>
	<%-- <br>:${prolist.name};<br> --%>
	<br>
	<input type="submit" class="btn btn-sm" value="buy now">
	
	</div>
	</c:forEach>


	<%-- <div ng-repeat ="products in pinfo">
	<div class=col-sm-4>
	<div class="items">
	    <img src="/resources/images/${products.id}" height="320" width="240" class="img-responsive">
	
	</div>
	</div>
	<div class=col-sm-8>
	<br>NAME:${products.name};<br>
	<br>DESCRIPTION:${products.description};<br>
	<br>PRICE:${products.price};<br>
	<br>CATEGORY:${products.cat.id};<br>
	<br>SUPPLIER:${products.supplier};<br>
	</div>
	</div>
	<script type="text/javascript">
var ps=${listpro};
var myapp=angular.module("myapp",[]);
myapp.controller("Categorycontroller", function($scope){
	$scope.pinfo=ps;
});
</script> --%>
</body>
</html>
	