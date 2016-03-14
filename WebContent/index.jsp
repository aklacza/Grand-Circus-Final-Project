<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Boat Buddy</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<link rel="stylesheet" href="css/main.css">

 

</head>
<body>

	<div class="nav">
		<div class="container">
			<ul class="pull-left">
				<li><a href="index.jsp">Home</a></li>
				<li><a href="aboutUs.jsp">About Us</a></li>
				
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
			<h1 class="tbackground2">Find a Boat near you!</h1>
			<p class="tbackground2">Boat Buddy connects people to unique water experiences, at any price point! 
			Whether you are a boat owner or are looking to hit the water, you can enjoy endless sunsets, fishing trips and weekend excursions on
            Michigan's most popular lakes!</p>
			<a href="learnMore.html" class="tbackground1"><span>Learn more </span></a>
			<br>
			
			<form id="search" action="listCaptainsByCity" method="get">
				<fieldset class="form-group">
				
				<input type="submit" class="tbackground1" value="Search" style="float: right">
				<div style="overflow: hidden; padding-right: .5em;">
				<input required="required" type="text" class="form-control" name="city" placeholder="Search by City">
    			</div>
				
				</fieldset>	
			</form>
			</div>
		</div>

	<div class="boat-guides">
		<div class="container">
			<h2>Sneak peak to your next weekend adventure!</h2>
			<p>Not sure which to pick? Go to our learn more section!</p>
			<div class="row">
				<div class="col-md-4">
					<div class="thumbnail">
						<a href="listCaptainsByType?type=canoe"><img title="Search for Canoes"
							src="img/canoe.jpg"></a>
					</div>
					<div class="thumbnail">
						<a href="listCaptainsByType?type=jet"><img title="Search for Jet Skis"
							src="img/jet.jpg"></a>
					</div>
				</div>
				<div class="col-md-4">
					<div class="thumbnail">
						<a href="listCaptainsByType?type=kayak"><img title="Search for Kayaks"
							src="img/kayak.jpg"></a>
					</div>
					<div class="thumbnail">
						<a href="listCaptainsByType?type=motor"><img title="Search for Pontoon Boats"
							src="img/pontoon.jpg"></a>
					</div>
				</div>
				<div class="col-md-4">
					<div class="thumbnail">
						<a href="listCaptainsByType?type=motor"><img title="Search for Sail Boats"
							src="img/sailingonaction.jpg"></a>
					</div>
					<div class="thumbnail">
						<a href="listCaptainsByType?type=motor"><img title="Search for Yachts"
							src="img/motor-yacht-onaction.jpg"></a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="learn-more">
		<div class="container">
			<div class="row">

				<div class="col-md-4">
					<h3>Host</h3>
					<p>Renting out your unused boat could pay your bills or fund
						your next vacation.</p>
					<p>
						<a href="host.html">Learn more about becoming a Host!</a>
					</p>
				</div>
				<div class="col-md-4">
					<h3>Trust and Safety</h3>
					<p>From Verified ID to our customer support team, we've got
						your back!</p>
					<p>
						<a href="help.html">Learn about trust at Boat Buddy</a>
					</p>
					<a href="https://www.boat-ed.com/assets/pdf/handbook/mi_handbook_entire.pdf">Handbook
						of Michigan Boating Laws</a>
						<br>
				</div>
				<div class="col-md-4">
					<h3>Share us on Facebook!</h3>
					<p>We appreciate your support!</p>
					<div class="fb-share-button" data-href="http://www.boatbuddy.xyz/" data-layout="button"></div>
				</div>
			</div>
		</div>
	</div>
	
	
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		
		
		<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.5";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
		
		
</body>
</html>