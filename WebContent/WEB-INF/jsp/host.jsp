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
        <ul class= "pull-left">
          <li><a href="index.jsp">Home</a></li>
          <li><a href="host.jsp">Host</a></li>
        </ul>
        <ul class="pull-right">
          <li><a href="signup.jsp">Sign Up</a></li>
          <li><a href="login.jsp">Log In</a></li>
          <li><a href="help.jsp">Help</a></li>
        </ul>
      </div>
    </div>
    
     <div class="jumbotron">
     <div class="container">
		<h1>Become a Boat Buddy Host:</h1>
		<br>

		<form action="/BoatApp/hostSubmit" method="GET">

			First name:<br>
			 <input type="text" name="fname" size="35"/><br>
			Last name: <br><input type="text" name="lname" size="35"/><br>
			E-mail: <br><input type="text" name="email" size="35"/><br>
		
			Tell us about your boat!<br>
			Address: <br><input type="text" name="address" size="35"/><br>
			City: <br><input type="text" name="city" size="35"/><br>
			State: <br><input type="text" name="state" size="35"/><br>
			Zip code: <br><input type="text" name="zip" size="35"/><br>
			

			People capacity: <br><input type="text" name="capacity" size="35"/><br>
			Type of boat: <input type="radio" name="type" value="motor" checked> Motor boat
		  <input type="radio" name="gender" value="sail"> Sail boat<br>
			<br><input type="text" name="zip" size="35"/><br>
			
			
			Brief profile:<br><input type="text" name="profile" size="35" style="height: 5em"/><br>
			
			<input type="submit" name="Submit" />
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
	
</body>
</html>