<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Case</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	 <link href='https://fonts.googleapis.com/css?family=Dancing+Script' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Playfair+Display:400italic' rel='stylesheet' type='text/css'>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<style>
	 h4{
	font-family: 'Playfair Display', serif;
   font-size:40px;
   color:#8E35EF;
   
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

		<div class="container-fluid">
		<center><h4>${welcome}</h4></center>
			
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
					<li><a href="signout"> Signout</a></li>
				</ul>
				</ul>
		</div>

</body>
</html>
