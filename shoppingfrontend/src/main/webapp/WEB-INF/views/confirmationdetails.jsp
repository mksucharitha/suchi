<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
<table>
<tr>
<td>FirstName:</td>
<td><form:input path="firstname" readonly="true" /></td>
</tr>
<tr>
<td>LastName:</td>
<td><form:input path="lastname" readonly="true" /></td>
</tr>
<tr>
<td>EmailID:</td>
<td><form:input path="emailid" readonly="true" /></td>
</tr>

<tr>
<td>Address:</td>
<td><form:input path="address" readonly="true" /></td>
</tr>
<tr>
<td>User name:</td>
<td><form:input path="username" readonly="true"/></td>
</tr>
<tr>
<td>Password:</td>
<td><form:password path="password" readonly="true" /></td>
</tr>
<tr>



</table>
<div class="form-group">
					<input type="submit" name="_eventId_submit" class="btn btn-primary"
						value="CONFIRM DETAILS" /> <input type="submit" name="_eventId_edit"
						class="btn btn-danger" value="EDIT" />
				</div>

			</form:form>
		</div>
	</div>
	<br>


</body>
</html>
 --%>