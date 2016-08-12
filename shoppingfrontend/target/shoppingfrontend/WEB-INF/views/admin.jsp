<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Case</title>
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
	background-color: #C3FDB8;
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
	font-size: 20px;
	color: white;
	padding:50px;
	text-decoration: none;
}
</style>
</head>
<body>

		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">ADMIN</a>
			</div>
				<ul class="nav nav-pills">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Categories <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">add</a></li>
							<li><a href="#">view</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Products<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">add</a></li>
							<li><a href="#">view</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Suppliers <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">add</a></li>
							<li><a href="#">view</a></li>
						</ul></li>
				<ul class="nav nav-pills navbar-right">
					<li><a href="mainpage"> Logout</a></li>
				</ul>
				</ul>
		</div>

</body>
</html>
