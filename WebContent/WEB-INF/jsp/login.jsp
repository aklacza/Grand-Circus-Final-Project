<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Boat Buddy Login</title>
<link rel="stylesheet" href="http://jqueryvalidation.org/files/demo/site-demos.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="css/main.css">
</head>
<body>

<div class="nav">
		<div class="container">
			<ul class="pull-left">
				<li><img src="img/logo.png" height=50px width=50px><a
					href="index.jsp">Boat Buddy</a></li>
			</ul>
			<ul class="pull-right">
				<li><a href="aboutUs.jsp">About Us</a></li>
				<li><a href="host.html">Become a Host</a></li>
				<li><a href="signup.html">Sign Up</a></li>
				<li><a href="listCaptains.html">List Hosts</a></li>
				<li><a href="help.html">Help</a></li>
			</ul>
		</div>
	</div>
    
     <div class="jumbotron">
      <div class="container">
        <h1 class="tbackground2">Log in!</h1>

		<form id ="loginForm" action="processLogin.html" method="POST">
		<select name="userType">
						<option selected="selected" disabled="disabled">Search
							by:</option>
						<option value="boathosts">Boat Host</option>
						<option value="shipmates">Shipmate</option>
						</select></br>
		
		    E-mail: <br><input type="text" name="email" size="35" required/><br>
		    password: <br><input type="password" name="password" size="35"required/><br>
		    <br><input type="submit" name="Submit" />
		</form>
		<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
		<script src="http://jqueryvalidation.org/files/dist/jquery.validate.min.js"></script>
		<script src="http://jqueryvalidation.org/files/dist/additional-methods.min.js"></script>
		<script>
		
		jQuery.validator.setDefaults({
		});
		$( "#loginForm" ).validate({
		  rules: {
		    field: {
		      required: true
		      
		    }
		  }
		});
		
		</script>
	</div>
 </div>
</body>
</body>
</html>