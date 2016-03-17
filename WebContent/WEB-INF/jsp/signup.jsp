<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Boat Buddy Sign-up</title>
<link rel="stylesheet"
	href="http://jqueryvalidation.org/files/demo/site-demos.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<link rel="stylesheet" href="css/main.css">
</head>
<body>
		<div style="padding-top: 7px;" class="nav">
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
				<li><a href="boatGallery.html">Boat Gallery</a></li>
				<li><a href="help.html">Help</a></li>
			</ul>
		</div>
	</div>

	<div style="height: 100%;" class="jumbotron">
		<div class="container">
			<center><h1 class="tbackground2">Sign up for Boat Buddy as a Shipmate:</h1></center>
			<br>

			<form id="signupForm" action="" method="GET" style="">
				First name:<br> <input type="text" name="fname" size="35"
					style="width: 100%" required /><br> Last name: <br>
				<input type="text" name="lname" size="35" style="width: 100%"
					required /><br> 
					 				E-mail (this is your username for Login): <br>
				<input type="text" name="email" size="35" style="width: 100%"
					required />
					
					Password: 
				<input type="password" name="password" size="30"required/><br>
					
					
					<br> Address: <br>
				<input type="text" name="address" size="35" style="width: 100%"
					required /><br> City: <br>
				<input type="text" name="city" size="35" style="width: 100%"
					required /><br> State: <br>
				<input type="text" name="state" size="35" style="width: 100%"
					required /><br> Zip code: <br>
				<input type="text" name="zip" size="35" style="width: 100%" required /><br>
				Brief profile:<br>
				<input name="profile" size="35" style="height: 5em; width: 100%;"
					type="text"><br> <input type="submit" name="Submit" value="Signup!"/>
					<p>Already registered? <a href="signup.html"> Sign in </a></p>
			</form>
			
			<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
			<script
				src="http://jqueryvalidation.org/files/dist/jquery.validate.min.js"></script>
			<script
				src="http://jqueryvalidation.org/files/dist/additional-methods.min.js"></script>
			<script>
				jQuery.validator.setDefaults({});
				$("#signupForm").validate({
					rules : {
						field : {
							required : true

						}
					}
				});
			</script>
		</div>
	</div>
</body>
</html>