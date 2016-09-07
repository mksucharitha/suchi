<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <link href='https://fonts.googleapis.com/css?family=Dancing+Script' rel='stylesheet' type='text/css'>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
<title>CategoryTable</title>
<style>
table, th , td  {
  border: 1px solid grey;
  border-collapse: collapse;
  padding: 5px;
}
table tr:nth-child(odd) {
  background-color: #f1f1f1;
}
table tr:nth-child(even) {
  background-color: #ffffff;
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
<body ng-app="myapp" ng-controller="Productcontroller">
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
				</div>
<br>
<div align="center">search <span class="glyphicon glyphicon-search"></span>: <input type="text" ng-model="searchbox"></div>
<br>
<table  class="table table-bordred table-striped">
	<thead>
	<tr>
	<th>ID</th>
	<th>Name</th>
	<th>Description</th>
	<th>price</th>
	<th>category</th>
	<th>supplier</th>
	<th>Edit</th>
	<th>Delete</th>
	</tr>
	</thead>
	<tbody >
	<tr ng-repeat="pro in pros | filter : searchbox">
	
	<td>{{pro.id}}</td>
	<td>{{pro.name}}</td>
	<td>{{pro.description}}</td>
	<td>{{pro.price}}</td>
	<td>{{pro.cat.id}}</td>
	<td>{{pro.supplier}}</td>
	<td><a href="edit1?proid={{pro.id}}">Edit</a></td>
	<td><a href="del1?proid={{pro.id}}">Delete</a></td>
	</tr>
	</tbody>
</table>
<script type="text/javascript">
var products=${pdata};
var myapp=angular.module("myapp",[]);
myapp.controller("Productcontroller", function($scope,$http){
	$scope.pros=products;
});
</script>
</body>
</html>