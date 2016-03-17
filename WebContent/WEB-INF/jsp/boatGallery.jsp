<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Boat Gallery</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="/BoatApp/css/main.css">
<link rel="stylesheet" href="css/hover.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="http://cdnjs.cloudflare.com/ajax/libs/fancybox/1.3.4/jquery.fancybox-1.3.4.css" />

<style>
th, td {
	padding: 5px;
}

body {
	/* font-family: "Aller", "sans-serif"; /* just a custom font */
}

ul {
/* 	list-style-type: none; /* hiding the bullets from ul */ 
}

a:-webkit-any-link {
	text-decoration: none; /* ignoring default link settings */
}

.fade {
	opacity: 1; /* sets default view to a 80% opacity */
	transition: opacity .25s ease-in-out;
	-moz-transition: opacity .25s ease-in-out;
	-webkit-transition: opacity .25s ease-in-out;
}

.fade:hover {
	opacity: .8;
	/* sets default view to a 100% opacity when on hover state */
}

.gallery-wrapper ul li {
	display: inline-block; /* sit wrappers in rows, not column block */
}

h4 { /* style the photos titles */
	text-align: center;
	font-size: 1em;
	margin: 0;
	padding: 0.5em 2em;
	text-transform: uppercase;
	font-weight: bold;
	color: black;
}

h1 { /* just a main title alignment */
	padding-left: 10em;
}

.img-wrapper { /* this will be the wrapping box */
	width: 310px;
	height: auto;
	border: 0.1em solid #ccc;
	border-radius: 0.4em;
	background-color: #f3f3f3;
	box-shadow: 0.1em 0.1em 0.5em -0.2em #777;
	margin: 1em 1em;
}

.img1 {
	width: 300px;
	height: auto;
	border-radius: 0.4em 0.4em 0em 0em;
	margin-left: 4px;
	margin-top: 4px;
	/* radius should be the same as the wrapper */
}

p {
	margin-left: 10px;
	font-family: Tahoma, Geneva, sans-serif;
	font-size: 14px;
	line-height: 24px;
	font-weight: bold;
	color: #09C;
}

h4{
	font-family: Tahoma, Geneva, sans-serif;
	line-height: 24px;
	font-weight: bold;
	color: #09C;

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
		<div class="container">
			<h1 class="tbackground2" style="padding-bottom: 15px;">Boat gallery:</h1>
			<div></div>
		</div>
	
	<div class="boat-guides">
		<div class="container">
			<div class="gallery-wrapper">
				<ul>
					<c:forEach var="myvar" items="${results}">
						<li><figure class="img-wrapper fade"> <a
								class="fancybox" href="${myvar.getPictureurl()}"><img
								class="img1" src="${myvar.getPictureurl()}">
								<h4>${myvar.getType()}</h4> </a>
							<p>
								City: ${myvar.getCity()} <br> State: ${myvar.getState()}<br>
								Zip: ${myvar.getZip()}<br> Capacity: ${myvar.getCapacity()}
							</p>
							</figure></li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	</div>

	<script type="text/javascript">
		$(function($) {
			var addToAll = false;
			var gallery = true;
			var titlePosition = 'inside';
			$(addToAll ? 'img' : 'img.fancybox').each(
					function() {
						var $this = $(this);
						var title = $this.attr('title');
						var src = $this.attr('data-big') || $this.attr('src');
						var a = $('<a href="#" class="fancybox"></a>').attr(
								'href', src).attr('title', title);
						$this.wrap(a);
					});
			if (gallery)
				$('a.fancybox').attr('rel', 'fancyboxgallery');
			$('a.fancybox').fancybox({
				titlePosition : titlePosition
			});
		});
		$.noConflict();
	</script>

	<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="js/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript"
		src="js/jquery.fancybox-1.3.4.pack.min.js"></script>
</body>
</html>