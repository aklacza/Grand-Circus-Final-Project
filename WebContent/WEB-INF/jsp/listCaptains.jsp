<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of captains</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="/BoatApp/css/main.css">

<style>
th, td {
	padding: 5px;
}
</style>

<script type="text/javascript" src="/path/to/jquery-latest.js"></script> 
<script type="text/javascript" src="/path/to/jquery.tablesorter.js"></script>

<script>
$(document).ready(function() 
    { 
        $("#hosts").tablesorter(); 
    } 
);
</script>

</head>
<body>



	<div class="nav">
		<div class="container">
			<ul class="pull-left">
				<li><a href="index.jsp">Boat Buddy</a></li>

			</ul>
			<ul class="pull-right">
				<li><a href="host.html">Become a Host</a></li>
				<li><a href="signup.html">Sign Up</a></li>
				<li><a href="login.html">Log In</a></li>
				<li><a href="help.html">Help</a></li>
				<li><a href="listCaptains.html">List Hosts</a></li>

			</ul>
		</div>
	</div>

	<div class="jumbotron">
		<div class="container">
			<h1 class="tbackground2">Captain list:</h1>
			<h4>Click heading to sort.</h4>
			<div>
				<table border=1 class="tablesorter" id="hosts">
					<thead style="opacity: 1; background-color: rgba(255, 255, 255, 0.8);">
						<tr>
							<th>Picture</th>
							<th>Name</th>
							<th>Email</th>
							<th>Address</th>
							<th><a href="listCaptainsbySearch1?sort=city">City </a></th>
							<th><a href="listCaptainsBySort?sort=state">State</a></th>
							<th>Zip</th>
							<th><a href="listCaptainsBySort?sort=peoplecapicity">Guest
									Capacity </a></th>
							<th><a href="listCaptainsBySearch1?sort=boattype">Type </a></th>
							<th>Profile</th>
						</tr>
						</thead>
						<tbody>
						<c:forEach var="myvar" items="${results}">
							<tr>
								<td><img src="${myvar.getPictureurl()}" width="50px" height="50px"></td>
								<td>${myvar.getFname()} ${myvar.getLname()}</td>
								<td>${myvar.getEmail()}</td>
								<td>${myvar.getAddress()}</td>
								<td>${myvar.getCity()}</td>
								<td>${myvar.getState()}</td>
								<td>${myvar.getZip()}</td>
								<td>${myvar.getCapacity()}</td>
								<td>${myvar.getType()}</td>
								<td>${myvar.getInterests()}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

		</div>
	</div>

	<%
		if (request.getParameter("searchInput") != null) {
	%>
		
	<%
		}
	%>

</body>
</html>