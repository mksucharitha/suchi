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
	
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<style>
body {
    width:100px;
	height:100px;
  background: -webkit-linear-gradient(90deg, #16222A 10%, #3A6073 90%); /* Chrome 10+, Saf5.1+ */
  background:    -moz-linear-gradient(90deg, #16222A 10%, #3A6073 90%); /* FF3.6+ */
  background:     -ms-linear-gradient(90deg, #16222A 10%, #3A6073 90%); /* IE10 */
  background:      -o-linear-gradient(90deg, #16222A 10%, #3A6073 90%); /* Opera 11.10+ */
  background:         linear-gradient(90deg, #16222A 10%, #3A6073 90%); /* W3C */
font-family: 'Raleway', sans-serif;
}

p {
	color:#CCC;
}

.spacing {
	padding-top:7px;
	padding-bottom:7px;
}
.middlePage {
	width: 680px;
    height: 500px;
    position: absolute;
    top:0;
    bottom: 0;
    left: 0;
    right: 0;
    margin: auto;
}

.logo {
	color:#CCC;
}
.small{
color:#98AFC7;
}
   </style>
</head>
<body>
<div class="middlePage">
<div class="page-header">
  <h1 class="logo"><i>Chocos-world</i> <small>Welcome to your place!</small></h1>
</div>

<div class="panel panel-info">
  <div class="panel-heading">
    <h3 class="panel-title">Please Sign In</h3>
  </div>
  <div class="panel-body">
  
  <div class="row">
  
<div class="col-md-3" >
<a href="#"><img src=<c:url value="/resources/images/slide5.jpg" />></a><br/>

</div>

    <div class="col-md-9" style="border-left:1px solid #ccc;height:160px">
<form class="form-horizontal" action="mainadmin">
<fieldset>

  <input id="textinput" name="textinput" type="text" placeholder="Enter User Name" class="form-control input-md">
  <div class="spacing"><input type="checkbox" name="checkboxes" id="checkboxes-0" value="1"><small> Remember me</small></div>
  <input id="textinput" name="textinput" type="password" placeholder="Enter Password" class="form-control input-md">
  <div class="spacing"><a href="#"><small> Forgot Password?</small></a><br/></div>
  <a href="mainadmin"  button type="button" class="btn btn-info btn-sm pull-right">signin</button></a>


</fieldset>
</form>
</div>
    
</div>
    
</div>
</div>



</div>
</body>
</body>
</html>