<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MY WEBPAGE</title>
<meta name="description" content="Hello Word">
	 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

 <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="css2.css">
	 <style>
	h1 {
	font-size: 110px;
	color:#40BFFF;
}
   h2{
   font-size:40px;
   color:#8D38C9;
   
   }

body {
	background-color:#FFE5B4;
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

.colorgraph {
  height: 5px;
  border-top: 0;
  background: #c4e17f;
  border-radius: 5px;
  background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
}
	
}
</style>
</head>
<body>
<center>
		<h1>
			<i>Chocos-world</i>
		</h1>
</center>
<div class="container-fluid">
		<ul class="nav nav-pills">
			<li><a href="mainpage"><span
					class="glyphicon glyphicon-home"></span>home</a></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> categories <span class="caret"></span></a>
				<ul class="dropdown-menu" role="menu">
					<li><a href="#">dark choclates</a></li>
					<li><a href="#">white choclates</a></li>
					<li><a href="#">semi sweet choclates</a></li>
				</ul></li>
			<li><a href="contact">Contact</a></li>
			<li><a href="about">About us</a></li>
			<li><a href="admin">Admin</a></li>
			<ul class="nav navbar-nav navbar-right">
				<u1 class="nav nav-pills">
				<li><a href="login"><span
						class="glyphicon glyphicon-log-in"></span>login</a></li>
				<li><a href="reg"><span class="glyphicon glyphicon-user">newuser</a></li>
			</ul>
		</ul>
</ul>
	</div>
<centre>
	<div class="container">

<div class="row" style="margin-top:20px">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
		<form role="form">
			<fieldset>
				<h2>Please Login In</h2>
				<hr class="colorgraph">
				<div class="form-group">
                    <input type="text" name="username" id="username" class="form-control input-lg" placeholder="enter your user name">
				</div>
				<div class="form-group">
                    <input type="password" name="password" id="password" class="form-control input-lg" placeholder="Password">
				</div>
				<label class="checkbox pull-left">
              <input type="checkbox" value="remember-me">
                                                   Remember me
                                     </label>
                    
					<a href="" class="btn btn-link pull-right">Forgot Password?</a>
				
				
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12">
                        <input type="submit" class="btn btn-lg btn-success btn-block" value="Sign In">
					</div>
					
				</div>
			</fieldset>
		</form>
	</div>
</div>

</div>	
</center>
</body>
</html>