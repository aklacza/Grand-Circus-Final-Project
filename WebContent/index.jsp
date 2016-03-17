<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Boat Buddy</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/hover.css">

<style>
.thumbnail{
	background: rgba(52,152,219, .8);
/* 	rgba(255, 255, 255, .5); */
border-radius: 8px ;
border: 0px;
	
}

.thumbnail img{
opacity: 1;
	-webkit-transition: .4s ease-in-out;
	transition: .4s ease-in-out;
	border-radius: 8px ;
	

}

.thumbnail:hover img{
opacity: .5;

}

.row h3 {
	color:black;
}

.row p{
	size: 10;
	color: #09C;
}

.container p{

}

.jumbotron p{
}

.white{
	color: white;
}

</style>
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

	<div class="jumbotron">
		<div class="container" style="padding-bottom: 30px; ">
			<h1 class="tbackground2">Find a Boat near you!</h1>
			<p class="tbackground2 white" >Boat Buddy connects people to unique
				water experiences! Whether you are a boat owner
				or are looking to hit the water, you can enjoy endless sunsets,
				fishing trips and weekend excursions on Michigan's most popular
				lakes!</p>
			<a href="learnMore.html" class="tbackground1"><span>Learn
					more </span></a> <br>



			<form id="search" action="listCaptainsBySearch1" method="get">
				<fieldset>
					<input type="submit" class="tbackground1" value="Search"
						style="float: right" >
					<p style="float: left; padding-right: 8px">Search for a </p>
						<select	name="searchType" style="float: left;
						 position: relative;
  							top: 50%;
  							margin-top: 8px" 
  							 class="tbackground1">
							<option style="float: right" selected="selected" value="Motor Boat">Motor Boat</option>
							<option value="Sail Boat">Sail Boat</option>
							<option value="Pontoon Boat">Pontoon Boat</option>
							<option value="Jet Ski">Jet Ski</option>
							<option value="Canoe">Canoe</option>
							<option value="Kayak">Kayak</option>
						</select>
						<p style="float: left; padding-left: 5px" > in  </p>
					
					<div style="overflow: hidden; padding-right: .5em; padding-left: .5em;">
						<input required="required" type="text" class="form-control"
							name="searchInput" placeholder="Select city..."> 
							
						
					</div>
				</fieldset>
			</form>
		</div>
		
		
	

	<div class="boat-guides">
		<div class="container">
			<h2>Pick a boat for your next adventure!</h2>
			<div class="row">
				<div class="col-md-4">
					<div class="thumbnail">
						<a href="listCaptainsByType?type=canoe"><img 
							title="Search for Canoes" src="img/canoe.jpg"></a>
					</div>
					<div class="thumbnail">
						<a href="listCaptainsByType?type=jet"><img
							title="Search for Jet Skis" src="img/jet.jpg"></a>
					</div>
				</div>
				<div class="col-md-4">
					<div class="thumbnail">
						<a href="listCaptainsByType?type=kayak"><img
							title="Search for Kayaks" src="img/kayak.jpg"></a>
					</div>
					<div class="thumbnail">
						<a href="listCaptainsByType?type=pontoon"><img
							title="Search for Pontoon Boats" src="img/pontoon.jpg"></a>
					</div>
				</div>
				<div class="col-md-4">
					<div class="thumbnail">
						<a href="listCaptainsByType?type=sail"><img
							title="Search for Sail Boats" src="img/sailingonaction.jpg"></a>
					</div>
					<div class="thumbnail">
						<a href="listCaptainsByType?type=motor"><img
							title="Search for Motor Boats" src="img/motor-yacht-onaction.jpg"></a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="learn-more">
		<div class="container" style="transparency: 0.5; padding-bottom:15px;">
			<div class="row">

				<div class="col-md-4">
					<h3>Host</h3>
					<p class="smalltext">Renting out your unused boat could pay your bills or fund
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
						<a href="help.html">Learn about trust at Boat Buddy</a><br>
					<a	href="https://www.boat-ed.com/assets/pdf/handbook/mi_handbook_entire.pdf">Handbook
						of Michigan Boating Laws</a>
					
					</p>
					
				</div>
				<div class="col-md-4">
					<h3>Share us on Facebook!</h3>
					<p>We appreciate your support!</p>
					<div class="fb-share-button" data-href="http://www.boatbuddy.xyz/"
						data-layout="button"></div>
				</div>
			</div>
		</div>
	</div>
	</div>


	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.5";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>


</body>
</html>