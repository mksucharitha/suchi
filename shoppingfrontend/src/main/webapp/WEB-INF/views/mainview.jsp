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
	background-image:url("resources/images/jjj.jpg");
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
	<!-- <th>category</th>
	<th>supplier</th> -->
	<th>Info</th>
	</tr>
	</thead>
	<tbody >
	<tr ng-repeat="pro in pros | filter : searchbox">
	
	<td>{{pro.id}}</td>
	<td>{{pro.name}}</td>
	<td>{{pro.description}}</td>
	<td>{{pro.price}}</td>
	<!-- <td>{{pro.cat.id}}</td>
	<td>{{pro.sup.id}}</td> -->
	
	<td><a href="info?proid={{pro.id}}">i</a></td>
	</tr>
	</tbody>
</table>
<script type="text/javascript">
var products=${listpro};
var myapp=angular.module("myapp",[]);
myapp.controller("Productcontroller", function($scope,$http){
	$scope.pros=products;
});
</script>
</body>
</html>