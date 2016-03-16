<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Be a Boat Buddy Host</title>
<link rel="stylesheet" href="http://jqueryvalidation.org/files/demo/site-demos.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="css/main.css">
</head>
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
				<li><a href="signup.html">Become a Shipmate</a></li>
				<li><a href="login.html">Log In</a></li>
				<li><a href="boatGallery.jsp">Gallery</a></li>
				<li><a href="help.html">Help</a></li>

			</ul>
		</div>
	</div>

    	<div class="jumbotron" style="height: 100%;">
		<div class="container">
			<h1 class="tbackground2">Become a Buddy Host!</h1>
			<p class="tbackground2">Sign up to rent your boat to Shipmates near you!</p>
				</div><br>
		<div class="container">
			<form id="hostSignup" action="${pageContext.request.contextPath}/hostSubmit" enctype="multipart/form-data" method="POST">
			First name:<br>
			 <input type="text" name="fname" size="30"/><br>
			Last name: <br><input type="text" name="lname" size="30"/><br>
			E-mail (this is your username for Login: <br><input type="text" name="email" size="30"/><br>
			Password: <br><input type="password" name="password" size="30"required/><br>
	
			<h2>Tell us about your Boat!</h2>
			Please select a picture to upload : <input type="file" name="file" size="30"/></br>
			
			Boat Address: <br><input type="text" name="address" size="30"/><br>
			Boat City: <br><input type="text" name="city" size="30"/><br>
			Boat State: <br><input type="text" name="state" size="30"/><br>
			Boat Zip Code: <br><input type="text" name="zip" size="30"/><br>
			
			Guest Capacity: <br><input type="text" name="capacity" size="30"/></br>
			Type of boat:<br>
					<input type="radio" name="type" value="Motor Boat" checked> Motor Boat<br>
				   <input type="radio" name="type" value="Sail Boat"> Sail Boat<br>
		    	   <input type="radio" name="type" value="Pontoon Boat"> Pontoon Boat<br>
		    	   <input type="radio" name="type" value="Jet Ski"> Jet Ski<br>
		    	   <input type="radio" name="type" value="Canoe"> Canoe<br>
		    	   <input type="radio" name="type" value="Kayak"> Kayak<br>
			<br>
			Brief Profile:<br><input type="text" name="profile" size="30" style="height: 5em"/>
		<br><input type="submit" name="Submit" value="Become a host!"/>
		<p style="color: blue">Already registered? <a href="signup.html"> Sign in </a></p>
		</form>
		
			<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
			<script src="http://jqueryvalidation.org/files/dist/jquery.validate.min.js"></script>
			<script src="http://jqueryvalidation.org/files/dist/additional-methods.min.js"></script>
			<script>
			
			jQuery.validator.setDefaults({
			});
			$( "#hostSignup" ).validate({
			  rules: {
			    field: {
			      required: true
			      
			    }
			  }
			});
			</script>
		  </div>
	</div>
 </div>
</div>	
</body>
</html>