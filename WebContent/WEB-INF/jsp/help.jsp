<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BOAT BUDDY HELP!!!</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="/BoatApp/css/main.css">
</head>
<body>
	<div class="nav">
		<div class="container">
			<ul class="pull-left">
				<li><img src="img/logo.png"><a href="index.jsp">Boat Buddy</a></li>
			</ul>
			<ul class="pull-right">
				<li><a href="aboutUs.jsp">About Us</a></li>
				<li><a href="host.html">Become a Host</a></li>
				<li><a href="signup.html">Sign Up</a></li>
				<li><a href="login.html">Log In</a></li>
				<li><a href="listCaptains.html">List Hosts</a></li>
				<li><a href="help.html">Help</a></li>
			</ul>
		</div>
	</div>

	<div class="jumbotron">
		<div class="container">
			<h1 class="tbackground2">Boat Buddy Help!</h1>
			<p class="tbackground2">We want to here from you! Email us at: <a href="mailto:boatbuddydetroit@gmail.com?Subject=Hello%20again" target="_top">boatbuddydetroit@gmail.com</a></p>
		</div>
	</div>
	<div class="boat-guides">
	<div class="container">
	<h1 class="tbackground2">Find us in Google Maps!</h1>
	<script src='https://maps.googleapis.com/maps/api/js?v=3.exp'></script>
	<div style='overflow:hidden;height:440px;width:700px;'><div id='gmap_canvas' style='height:440px;width:700px;'></div>
	<div><small><a href="http://embedgooglemaps.com">embed google map</a></small></div>
	<div><small><a href="http://freedirectorysubmissionsites.com/">reedirectorysubmissionsites.com</a></small></div>
	<style>#gmap_canvas img{max-width:none!important;background:none!important}</style>
	</div><script type='text/javascript'>function init_map(){var myOptions = {zoom:10,center:new google.maps.LatLng(42.329650337049465,-83.0509036413086),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(42.329650337049465,-83.0509036413086)});infowindow = new google.maps.InfoWindow({content:'<strong>BoatBuddy</strong><br>Detroit, USA<br>'});google.maps.event.addListener(marker, 'click', function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>
	</div>
	</div>
</body>
</html>