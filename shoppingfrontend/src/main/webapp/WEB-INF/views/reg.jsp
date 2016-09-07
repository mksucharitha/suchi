<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

		
<title>MY WEBPAGE</title>
<meta name="description" content="Hello Word">
<link rel="stylesheet" type="text/css" href="resources/bootstrap-3.3.6/css/bootstrap.css">
<link href='https://fonts.googleapis.com/css?family=Dancing+Script' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300italic' rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

		
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

	 	 <style>
	h1 {
	font-family: 'Pacifico', cursive;
	font-size: 80px;
	color:#2B60DE;
}
   h2{
   font-family: 'Open Sans Condensed', sans-serif;
   font-size:40px;
   color:black;
   
   }

body {
	background-image:url("resources/images/s6.jpg");
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
	background-color: #b8375c;
}

li a {
font-family: 'Dancing Script', cursive;
	font-size: 30px;
	color: white;
	padding:50px;
	text-decoration: none;
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
			<li><a href="mainpage"><span class="glyphicon glyphicon-home"></span>home</a></li>
			<li class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown" href="#">
      categories <span class="caret"></span></a>
      <ul class="dropdown-menu" role="menu">
        <li><a href="#">dark choclates</a></li>
        <li><a href="#">couverature</a></li>
        <li><a href="#">milk choclates</a></li>                        
      </ul>
    </li>
			<li><a href="contact">Contact</a></li>
			<li><a href="about">About us</a></li>
			
			<ul class = "nav navbar-nav navbar-right">
			<ul class="nav nav-pills">		
			<li><a href="login"><span class="glyphicon glyphicon-log-in"></span> login</a></li>
			<li><a href="reg"><span class="glyphicon glyphicon-user"></span> newuser</a></li>
			</ul>
			</ul>	
		</ul>
		
		
	</div>
	<div class="container">
	<div class="col-md-6">
  <h2>plz fill ur details</h2>
<form:form action="register" id="reg" method="post" commandName="user2" autocomplete="on">

  
    <div class="form-group">
      <label for="firstname">FirstName</label>
      <form:input path="firstname" class="form-control" id="firstname" placeholder="Enter your  firstname" required="true"/>
      <%-- <c:forEach
							items="${flowRequestContext.messageContext.getMessagesBySource('firstname')}"
							var="error">
							<div>
								<span style="color:red">${error.text}</span>
							</div>
						</c:forEach> --%>
    </div>
    <div class="form-group">
      <label for="lastname">LastName</label>
      <form:input path="lastname" class="form-control" id="lastname" placeholder="Enter your lastname" required="true"/>
     <%-- <c:forEach
							items="${flowRequestContext.messageContext.getMessagesBySource('lastname')}"
							var="error">
							<div>
								<span style="color:red">${error.text}</span>
							</div>
						</c:forEach> --%>
    </div>
    <div class="form-group">
      <label for="emailid">EmailID</label>
      <form:input path="emailid" type="email" class="form-control" id="emailid" placeholder="Enter your email"/>
      <form:errors path="emailid"/>
      <%-- <c:forEach
							items="${flowRequestContext.messageContext.getMessagesBySource('emaillid')}"
							var="error">
							<div>
								<span style="color:red">${error.text}</span>
							</div>
						</c:forEach> --%>
    </div>
    <div class="form-group">
      <label for="address">Address</label>
      <form:input path="address" class="form-control" id="address" placeholder="Enter your address" required="true"/>
      <%-- <c:forEach
							items="${flowRequestContext.messageContext.getMessagesBySource('address')}"
							var="error">
							<div>
								<span style="color:red">${error.text}</span>
							</div>
						</c:forEach> --%>
    </div>
    <div class="form-group">
      <label for="username">Username</label>
      <form:input path="username" class="form-control" id="username" placeholder="Enter your username"/>
      <%-- <c:forEach
							items="${flowRequestContext.messageContext.getMessagesBySource('username')}"
							var="error">
							<div>
								<span style="color:red">${error.text}</span>
							</div>
						</c:forEach> --%>
      <font style="color: red;"><form:errors path="username"/></font>
    </div>
    <div class="form-group">
      <label for="pwd">Password</label>
      <form:input path="password"  type="password" class="form-control" id="password" placeholder="Enter password"/>
      <%-- <c:forEach
							items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
							var="error">
							<div>
								<span style="color:red">${error.text}</span>
							</div>
						</c:forEach> --%>
   <font style="color: red;"> <form:errors path="password"/></font>
    </div>
    <div class="form-group">
    <div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12">
                        <input type="submit" class="btn btn-lg btn-success btn-block" value="Register">
                        
					</div>
					
				</div>
				</div>
  </form:form>
  </div>
		<div class="col-md-6">
				<div class="panel-heading">
	               <div class="panel-title text-center">
	       <h2>terms&conditions</h2>
	               		<hr />
	               	</div>
	            </div> 
				
								<p>
					By clicking on "Register" you agree to The Company's' Terms and Conditions
				</p>
				<p>
					While rare, prices are subject to change based on exchange rate fluctuations - 
					should such a fluctuation happen, we may request an additional payment. You have the option to request a full refund or to pay the new price.
				</p>
				<p>
					Should there be an error in the description or pricing of a product, we will provide you with a full refund 
				</p>
				<p>
					Acceptance of an order by us is dependent on our suppliers ability to provide the product. 
				</p>
				
				</div>
		</div>
		<div class="navbar-right" color="white">
© 2016 - All Rights with Chocos-world
</div>
</footer>
	</body>
</html>
	

