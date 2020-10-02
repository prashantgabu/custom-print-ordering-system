<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>
<!DOCTYPE html>
<html>
<head>
<title>Printsalive</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Modern Shoppe Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 






















</script>
<!--//for-mobile-apps -->
<!--Custom Theme files -->
<link href="<c:url value="/resources/Buyer/css/bootstrap.css" />"
	rel="stylesheet" type="text/css" media="all" />
<link href="<c:url value="/resources/Buyer/css/style.css" />"
	rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet"
	href="<c:url value="/resources/Buyer/css/flexslider.css" />"
	type="text/css" media="screen" />
<!--//Custom Theme files -->
<!--js-->

<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id"
	content="1062183565891-hvr6skim9nk4p43gu60ml7cbictpkd3i.apps.googleusercontent.com">
<script src="<c:url value="/resources/Buyer/js/googlesignin.js"/>"></script>
<script src="<c:url value="/resources/Buyer/js/jquery-1.11.1.min.js"/>"></script>
<script src="<c:url value="/resources/Buyer/js/modernizr.custom.js"/>"></script>
<!--//js-->
<!--cart-->
<script src="<c:url value="/resources/Buyer/js/simpleCart.min.js"/>"></script>
<!--cart-->
<!--web-fonts-->
<link
	href="//fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic"
	rel="stylesheet" type="text/css">
<link
	href="//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic"
	rel="stylesheet" type="text/css">
<link href="//fonts.googleapis.com/css?family=Pompiere" rel="stylesheet"
	type="text/css">
<link href="//fonts.googleapis.com/css?family=Fascinate"
	rel='stylesheet' type='text/css'>
<!--web-fonts-->
<!--animation-effect-->
<link href="<c:url value="/resources/Buyer/css/animate.min.css"/>"
	rel="stylesheet">
<script src="<c:url value="/resources/Buyer/js/wow.min.js"/>"></script>
<script>
	new WOW().init();
</script>
<!--//animation-effect-->
<!--start-smooth-scrolling-->
<script type="text/javascript"
	src="<c:url value="/resources/Buyer/js/move-top.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/Buyer/js/easing.js"/>"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!--//end-smooth-scrolling-->
</head>
<body>
	<!--header-->
	<div class="header">

		<div class="header-two navbar navbar-default">
			<!--header-two-->
			<div class="container">
				<div class="nav navbar-nav header-two-left">
					<ul>
						<li><i class="glyphicon glyphicon-earphone"
							aria-hidden="true"></i>+91 7016618215</li>
						<li><i class="glyphicon glyphicon-envelope"
							aria-hidden="true"></i><a href="mailto:printsalive@gmail.com">Email
								Us</a></li>
					</ul>
				</div>
				<div class="nav navbar-nav logo wow zoomIn animated"
					data-wow-delay=".7s">
					<h1>
						<a href="b_login">Prints<b>ALive</b><span class="tag">Sprint Your Print
						</span>
						</a>
					</h1>
				</div>
				<div class="nav navbar-nav navbar-right header-two-right">
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="top-nav navbar navbar-default">
			<!--header-three-->
			<div class="container">
				<nav class="navbar" role="navigation">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
					<!--navbar-header-->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav top-nav-info">
							<li><a href="${pageContext.request.contextPath}/b_index"
								class="active">Home</a></li>
							<li><a href="${pageContext.request.contextPath}/b_aboutus">About
									Us</a></li>
							<li><a href="${pageContext.request.contextPath}/b_register">Register</a></li>
							<li><a href="${pageContext.request.contextPath}/b_login">Login</a></li>
							
							<li><a
								href="${pageContext.request.contextPath}/b_add_feedback">Feedback</a></li>
						</ul>
						<div class="clearfix"></div>
						<!--//navbar-collapse-->
					</div>
					<!--//navbar-header-->
				</nav>
				<div id="cd-search" class="cd-search">
					<form>
						<input type="search" placeholder="Search...">
					</form>
				</div>
			</div>
		</div>
	</div>
	<!--//header-->