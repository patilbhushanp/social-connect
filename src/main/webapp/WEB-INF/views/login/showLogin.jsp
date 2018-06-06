<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>X-Connect | Social Connect</title>
		<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
		<link href="css/font-awesome/font-awesome.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">
	 	<link href="css/metismenu/metisMenu.min.css" rel="stylesheet">
	 	
	  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	  	<script src="js/bootstrap/bootstrap.min.js"></script>
	  	<script src="js/metismenu/metisMenu.min.js"></script>
	  	<script src="js/datatable/datatables.min.js"></script>	
	  	<script src="js/textext/jquery.textext.min.js"></script>
		<script src="js/slimscroll/jquery.slimscroll.min.js"></script>
	  
	  	<script	type="text/javascript" src="js/ckeditor/ckeditor.js"></script>
	  	<style>
	  	.form-control {
		    background: none repeat scroll 0 0 rgba(0, 0, 0, 0);
		    font-size: 12px;
		    height: 30px !important;
		    margin: 0;
		    z-index: 2000;
		    margin-bottom: 0;
		    padding-top: 7px !important;
		    border: blue !important;
		}
	  	</style>
	</head>
	<body>
		<div class="row loginBackground">
			<div class="loginContentLayout">
	            <div>
	                <h1 class="logo-name">SC+</h1>
	            </div>
	            <h3>Welcome to X-Connect</h3>
	            <p>Gateway for social connect...</p>
	            <p>Login in. To see it in action.</p>
	            <form class="m-t" role="form" method="post" autocomplete="off" action="login">
	                <div class="form-group">
	                    <input type="email" name="username" id="username" class="form-control" placeholder="Username" required="" />
	                </div>
	                <div class="form-group">
	                    <input type="password" name="password" id="password" class="form-control" placeholder="Password" required="" />
	                </div>
	                <button type="submit" class="btn btn-primary block full-width m-b">Login</button>
	
	                <a href="#"><small>Forgot password?</small></a>
	                <p class="text-muted text-center"><small>Do not have an account?</small></p>
	                <a class="btn btn-sm btn-white btn-block" href="register.html">Create an account</a>
	            </form>
	        </div>
		</div>
	</body>
</html>