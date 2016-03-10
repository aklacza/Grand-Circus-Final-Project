<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Be a Boat Buddy Host</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="http://jqueryvalidation.org/files/demo/site-demos.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
</head>
</head>
<body>
<div class="nav">
      <div class="container">
        <ul class= "pull-left">
          <li><a href="index.jsp">Home</a></li>
          <li><a href="host.html">Host</a></li>
        </ul>
        <ul class="pull-right">
          <li><a href="login.html">Log In</a></li>
          <li><a href="help.html">Help</a></li>
        </ul>
      </div>
    </div>
    
     <div class="jumbotron">
     <div class="container">

		<h1>Become a Boat Buddy Host:</h1>
		<br>

		<h2>First, tell us a little about yourself:</h2><br>
		<form id="hostSignup" action="/hostSubmit" method="GET">

			First name:<br>
			 <input type="text" name="fname" size="35"/><br>
			Last name: <br><input type="text" name="lname" size="35"/><br>
			E-mail: <br><input type="text" name="email" size="35"/><br>
		    <br>
			<h2>Now, tell us about your boat!</h2>
			<br>
			Boat Address: <br><input type="text" name="address" size="35"/><br>
			Boat City: <br><input type="text" name="city" size="35"/><br>
			Boat State: <br><input type="text" name="state" size="35"/><br>
			Boat Zip Code: <br><input type="text" name="zip" size="35"/><br>
			
			Guest Capacity: <br><input type="text" name="capacity" size="35"/></br>
			Type of boat:<br>
					<input type="radio" name="type" value="motor" checked> Motor boat<br>
				   <input type="radio" name="type" value="sail"> Sail boat<br>
		    Other: <br>
		    	   <input type="radio" name="type" value="jetski"> Jet Ski<br>
		    	   <input type="radio" name="type" value="canoe"> Canoe<br>
		    	   <input type="radio" name="type" value="kayak"> kayak<br>
			<br>
			Brief Profile:<br><input type="text" name="profile" size="35" style="height: 5em"/><br>
			
		
		<br><input type="submit" name="Submit" /><br>
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