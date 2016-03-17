<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BOAT BUDDY HELP!!!</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
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

<div class="jumbotron">
		<div class="container">
			<h1 class="tbackground2">We want to here from you!</h1>
			<h4 class="tbackground1"><a href="mailto:boatbuddydetroit@gmail.com?Subject=Hello%20again" target="_top">Email us at: boatbuddydetroit@gmail.com</a></h4><br>
		
			
<!-- 			<h3 class="tbackground2">Email us at: </h3><h4><a href="mailto:boatbuddydetroit@gmail.com?Subject=Hello%20again" target="_top">boatbuddydetroit@gmail.com</a></h4> -->
			<br><div class="row">
<!-- 			<div class="column" style="width:auto; height: auto; display:auto"> -->
				<div class="col-md-6"style="width:auto; height: auto; display:auto ;margin-right: 100px">
<!-- 						<h4><a href="mailto:boatbuddydetroit@gmail.com?Subject=Hello%20again" target="_top">boatbuddydetroit@gmail.com</a></h4> -->
						<form id="signUp" action="mailto:boatbuddydetroit@gmail.com?Subject=Hello%20again" method="post" enctype="text/plain">
						Name:<br>
						<input type="text" name="name" style="color:gray" value="your name" size="30"><br>
						E-mail:<br>
						<input type="text" name="mail" style="color:gray" value="your email" size="30"><br>
						Comment:<br>
						<input type="text" name="comment" style="color:gray" value="your comment" size="30"><br><br>
						<input type="submit" value="Send">
						<input type="reset" value="Reset">
						</form>
				</div>
			
<!-- 			<h3 class="tbackground2">Find us in Google Maps!</h3> -->
<!-- 			<div class="column" style="width:auto; height: auto; display:auto"> -->
			<div class="col-md-6" style="width:auto; height: auto; display:auto">
			<script src='https://maps.googleapis.com/maps/api/js?v=3.exp'></script>
			<div style='overflow:hidden;height:220px;width:400px;'><div id='gmap_canvas' style='height:400px;width:400px; margin-left:100px'></div>
			<div><small><a href="http://embedgooglemaps.com">embed google map</a></small></div>
			<div><small><a href="http://freedirectorysubmissionsites.com/">free web directories</a></small></div>
			<style>#gmap_canvas img{max-width:none!important;background:none!important}</style></div>
			<script type='text/javascript'>function init_map(){var myOptions = {zoom:10,center:new google.maps.LatLng(42.3358794,-83.04974529999998),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(42.3358794,-83.04974529999998)});infowindow = new google.maps.InfoWindow({content:'<strong>Boat Buddy</strong><br>1570 Woodward Avenue<br>'});google.maps.event.addListener(marker, 'click', function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>
			<ul class="centered">
			</ul>
			</div>
			</div>
						
	</div>	
</div>		
<h4 class="tbackground2">Boat Buddy's is located at: 1570 Woodward Avenue Detroit, MI 48226 <a href="http://www.grandcircus.co/">www.grandcircus.co</h4><br>	
<!-- 		<p class="tbackground2">We want to here from you!<br> -->
<!-- 		Email us at: <a style="color: white" href="mailto:boatbuddydetroit@gmail.com?Subject=Hello%20again" target="_top">boatbuddydetroit@gmail.com</a></p><br> -->
<!-- 		<form action="mailto:boatbuddydetroit@gmail.com?Subject=Hello%20again" method="post" enctype="text/plain"> -->
<!-- 		Name:<br> -->
<!-- 		<input type="text" name="name" value="your name"><br> -->
<!-- 		E-mail:<br> -->
<!-- 		<input type="text" name="mail" value="your email"><br> -->
<!-- 		Comment:<br> -->
<!-- 		<input type="text" name="comment" value="your comment" size="55"><br><br> -->
<!-- 		<input type="submit" value="Send"> -->
<!-- 		<input type="reset" value="Reset"> -->
<!-- 		</form> -->
<!-- 		</div> -->
	
<!-- 	<div class="boat-guides"> -->
<!-- 	<div class="container"> -->
<!-- 	<h2 class="tbackground2">Find us in Google Maps!</h2> -->
<!-- 	<script src='https://maps.googleapis.com/maps/api/js?v=3.exp'></script> -->
<!-- 	<div style='overflow:hidden;height:440px;width:700px;'><div id='gmap_canvas' style='height:440px;width:700px;'></div> -->
<!-- 	<div><small><a href="http://embedgooglemaps.com">embed google map</a></small></div> -->
<!-- 	<div><small><a href="http://freedirectorysubmissionsites.com/">free web directories</a></small></div> -->
<!-- 	<style>#gmap_canvas img{max-width:none!important;background:none!important}</style></div> -->
<!-- 	<script type='text/javascript'>function init_map(){var myOptions = {zoom:10,center:new google.maps.LatLng(42.3358794,-83.04974529999998),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(42.3358794,-83.04974529999998)});infowindow = new google.maps.InfoWindow({content:'<strong>Boat Buddy</strong><br>1570 Woodward Avenue<br>'});google.maps.event.addListener(marker, 'click', function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script> -->
<!-- 	<ul class="centered"> -->
<!-- 	<p class="tbackground2">Boat Buddy's is located at: 1570 Woodward Avenue Detroit, MI 48226 <a href="http://www.grandcircus.co/">www.grandcircus.co</a><br> -->
<!-- 	</ul> -->
<!-- 	</div> -->
</body>
</html>