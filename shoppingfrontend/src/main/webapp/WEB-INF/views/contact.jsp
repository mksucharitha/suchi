<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
h1 {
	font-size: 110px;
	color:#0000A0;
}
   h2{
   font-size:40px;
   color:#954535;
   
   }

body {
	background-color:#98AFC7;
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

.h2 small {
font-size: 24px;
color:black;
}
</style>
</head>
<body>
	
	<div align="center">
		<h1>
			<i>Chocos-world</i>
		</h1>

		<ul class="nav nav-pills">
			<li><a class="active" href="#"><span
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
				<li><a href="reg">new user</a></li>
			</ul>
			</u1>
		</ul>


	</div>

    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <h2 class="h2">
                    Contact us <small>Feel free to contact us</small></h2>
            </div>
        </div>
    </div>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <div class="well well-sm">
                <form>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Name</label>
                            <input type="text" class="form-control" id="name" placeholder="Enter name" required="required" />
                        </div>
                        <div class="form-group">
                            <label for="email">
                                Email Address</label>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                </span>
                                <input type="email" class="form-control" id="email" placeholder="Enter email" required="required" /></div>
                        </div>
                        <div class="form-group">
                            <label for="subject">
                                Subject</label>
                            <select id="subject" name="subject" class="form-control" required="required">
                                <option value="service">General Customer Service</option>
                                <option value="suggestions">Suggestions</option>
                                <option value="product">Product Support</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Message</label>
                            <textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required"
                                placeholder="Message"></textarea>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-primary pull-right" id="btnContactUs">
                            Send Message</button>
                    </div>
                </div>
                </form>
            </div>
        </div>
        <div class="col-md-4">
            <form>
            <legend><span class="glyphicon glyphicon-globe"></span> Our office</legend>
            <address>
                <strong><h3>chocos-world</h3></strong><br>1st Floor, 'Ashutosh' Bunglow, Opp. A. J. Classic,<br>

Behind Aparna House, Near Mahalaxmi Lawns,<br>

Karve Nagar, Pune - 411052<br>
                Phone: +91 8801550480<br>
            E-mail: <a href="mailto:mksucharithareddy@gmail.com">mksucharithareddy@gmail.com</a>
            </address>
            </form>
        </div>
    </div>
</div>

	