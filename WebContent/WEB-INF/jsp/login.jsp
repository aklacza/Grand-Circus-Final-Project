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
<link rel="stylesheet" href="css/hover.css">

</head>
<body>

	<div style="padding-top: 7px;" class="nav">
		<div class="container">
			<ul class="pull-left">
				<li><img src="img/logo.png" height=50px width=50px><a class="hvr-underline-from-left"
					href="index.jsp">Boat Buddy</a></li>
			</ul>

			<ul class="pull-right">
				<li><a class="hvr-underline-from-left" href="aboutUs.jsp">About Us</a></li>
				<li><a class="hvr-underline-from-left" href="host.html">Become a Host</a></li>
				<li><a class="hvr-underline-from-left" href="signup.html">Become a Shipmate</a></li>
				<li><a class="hvr-underline-from-left" href="login.html">Log In</a></li>
				<li><a class="hvr-underline-from-left" href="boatGallery.html">Boat Gallery</a></li>
				<li><a class="hvr-underline-from-left" href="help.html">Help</a></li>
			</ul>
		</div>
	</div>
    
     <div class="jumbotron" height="1000px">
      <div class="container">
        <h1 class="tbackground2">Log in!</h1>

		<form id ="loginForm" action="processLogin.html" method="POST">
		<select name="userType">
						<option selected="selected" disabled="disabled">Search
							by:</option>
						<option value="boathosts" selected="selected">Boat Host</option>
						<option value="shipmates">Shipmate</option>
						</select></br>
		
		    E-mail: <br><input type="text" name="email" size="35" required/><br>
		    password: <br><input type="password" name="password" size="35"required/><br>
		    <br><input type="submit" name="Submit" value="Login"/>
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
	<div class="boat-guides">
		<div class="container">		
		<h4 class="tbackground2" style="centered">Boat Buddy's is located at: 1570 Woodward Avenue Detroit, MI 48226 <a href="http://www.grandcircus.co/">www.grandcircus.co</a></h4><br>	
		</div>
	</div>

</body>
</body>
</html>