<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Boat Buddy Sign-up</title>
</head>
<body>

Sign up for Boat Buddy as a Shipmate:

<br>

<form id ="signupForm" action="" method="GET">
    First name:<br>
     <input type="text" name="fname" size="35" required/><br>
    Last name: <br><input type="text" name="lname" size="35" required/><br>
    E-mail: <br><input type="text" name="email" size="35" required/><br>
    Address: <br><input type="text" name="address" size="35"required/><br>
    City: <br><input type="text" name="city" size="35" required/><br>
    State: <br><input type="text" name="state" size="35" required/><br>
    Zip code: <br><input type="text" name="zip" size="35" required/><br>
    Brief profile:<br><input type="text" name="profile" size="35" style="height: 5em"/><br>

    <input type="submit" name="Submit" />
</form>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://jqueryvalidation.org/files/dist/jquery.validate.min.js"></script>
<script src="http://jqueryvalidation.org/files/dist/additional-methods.min.js"></script>
<script>

jQuery.validator.setDefaults({
});
$( "#signupForm" ).validate({
  rules: {
    field: {
      required: true
    }
  }
});
</script>

</body>
</html>