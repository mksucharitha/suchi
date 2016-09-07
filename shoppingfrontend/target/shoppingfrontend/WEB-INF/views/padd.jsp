<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
   <link href='https://fonts.googleapis.com/css?family=Dancing+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Playfair+Display:400italic' rel='stylesheet' type='text/css'>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Product add</title>
<style>
h3{
    font-family: 'Playfair Display', serif;
   font-size:40px;
   color:#F778A1;
   
   }
   body {
	background-image:url("resources/images/k7.jpg");
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
	text-decoration: none;
}
</style>
</head>

<body>
 

 

<div class="container">
<ul class="nav nav-pills">
				<li><a href="#">admin</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Categories <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="add">AddCategory</a></li>
							<li><a href="view2">ViewCategory</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Products<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="pradd">AddProduct</a></li>
							<li><a href="view4">ViewProduct</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Suppliers <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="sadd">AddSupplier</a></li>
							<li><a href="view6">ViewSupplier</a></li>
						</ul></li>
				<ul class="nav nav-pills navbar-right">
					<li><a href="signout">Signout</a></li>
				</ul>
				</ul>
<h3>ADD PRODUCTS</h3>
 <form:form action="view3" method="post" commandName="product" enctype="multipart/form-data">
<div class="form-group">
      <label for="id">ID</label>
      <form:input path="id"  class="form-control" readonly="true" required="true"/>
    </div>
    <div class="form-group">
      <label for="name">PRODUCT NAME</label>
      <form:input path="name" id="name" class="form-control" required="true"/>
    </div>
     <div class="form-group">
      <label for="description">PRODUCT DESCRIPTION</label>
      <form:input path="description" id="description" class="form-control" required="true"/>
    </div>
    <div class="form-group">
      <label for="price">PRICE</label>
      <form:input path="price" id="price" class="form-control" required="true"/>
       <font style="color: red;"><form:errors path="price"/></font> 
    </div>
   <%--  <div class="form-group">
      <label for="category">CATEGORY</label>
     
      <form:input path="category" id="category" class="form-control" required="true"/>
    </div> --%>
    <div class="form-group">
      <form:label path="cat">CATEGORY</form:label>
      <form:select path="cat.name"  class="form-control" items="${categoryList}" itemLabel="name" itemValue="name"/>
    </div>
    <div class="form-group">
      <label for="supplier">SUPPLIER</label>
      <form:input path="supplier" id="supplier" class="form-control" required="true"/>
    </div> 
     <div class="form-group">
      <label for="file">UPLOAD FILE</label>
      <form:input type="file" path="file" id="file" class="form-control" required="true"/>
    </div> 
    <button type="submit" class="btn btn-primary">SUBMIT</button>
    </form:form>
    </div>
    
		</body>
		</html>
		