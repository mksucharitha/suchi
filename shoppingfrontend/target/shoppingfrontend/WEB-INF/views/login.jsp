<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MY WEBPAGE</title>
<meta name="description" content="Hello Word">
	 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	 <link href='https://fonts.googleapis.com/css?family=Dancing+Script' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Playfair+Display:400italic' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300italic' rel='stylesheet' type='text/css'>

	

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

 <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


	 <style>
	h1 {
	font-family: 'Pacifico', cursive;
	font-size: 80px;
	color:#40BFFF;
}
   h2{
   font-family: 'Open Sans Condensed', sans-serif;
   font-size:40px;
   color:#8D38C9;
   
   }
    h3{
    font-family: 'Playfair Display', serif;
   font-size:40px;
   color:#F778A1;
   
   }
    h4{
    font-family: 'Playfair Display', serif;
   font-size:40px;
   color:#F70D1A;
   
   }
   

body {
	background-image:url("resources/images/jj.jpg");
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
	
.footer{
text-align:left;
font-size:20px;
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
					<li><a href="#">semisweet choclates</a></li>
					<li><a href="#">milk choclates</a></li>
				</ul></li>
			<li><a href="contact">Contact</a></li>
			<li><a href="about">About us</a></li>
			
			<ul class="nav navbar-nav navbar-right">
				<u1 class="nav nav-pills">
				<li><a href="login"><span
						class="glyphicon glyphicon-log-in"></span> login</a></li>
				<li><a href="reg"><span class="glyphicon glyphicon-user"></span> newuser</a></li>
			</ul>
		</ul>
	</div>

	<div class="container">

<center><h4>${welcome}</h4></center>
<center><h3>${regsuccess}</h3></center>
<div class="row" style="margin-top:20px">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
		<form role="form" action="checklogin">
			<fieldset>
				<center><h2>Please Login In</h2></center>
				<hr class="colorgraph">
				<div class="form-group">
                    <input type="text" name="username" id="username" class="form-control input-lg" placeholder="enter your user name"required="true">
				</div>
				<div class="form-group">
                    <input type="password" name="password" id="password" class="form-control input-lg" placeholder="Password" required="true">
				</div>
				<label class="checkbox pull-left">
              <input type="checkbox" value="remember-me">
                                                   Remember me
                                     </label>
                    
					
				
				
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12">
                        <input type="submit" class="btn btn-lg btn-success btn-block" value="Sign In">
					</div>
					
				</div>
<%-- <input type="hidden" name="${_csrf.parametername }" value="${_csrf.token }">	 --%>			
			</fieldset>
		</form>
	</div>
</div>
<footer>
<div class="navbar-right" color="white">
© 2016 - All Rights with Chocos-world
</div>
</footer>

</div>	
</body>
</html>