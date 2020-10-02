<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Modern Shoppe a Ecommerce Online Shopping Category Flat
	Bootstrap Responsive Website Template | Single :: w3layouts</title>
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
<link href="<c:url value="/resources/Buyer/css/bootstrap.css"/>"
	rel="stylesheet" type="text/css" media="all" />
<link href="<c:url value="/resources/Buyer/css/style.css" />"
	rel="stylesheet" type="text/css" media="all" />
<!--//Custom Theme files -->
<!--js-->
<script src="<c:url value="/resources/Buyer/js/jquery-1.11.1.min.js"/>"></script>
<script src="<c:url value="/resources/Buyer/js/modernizr.custom.js"/>"></script>
<!--//js-->
<!--flex slider-->
<script defer
	src="<c:url value="/resources/Buyer/js/jquery.flexslider.js"/>"></script>
<link rel="stylesheet"
	href="<c:url value="/resources/Buyer/css/flexslider1.css"/>"
	type="text/css" media="screen" />
<script>
	// Can also be used with $(document).ready()
	$(window).load(function() {
		$('.flexslider').flexslider({
			animation : "slide",
			controlNav : "thumbnails"
		});
	});
</script>
<!--flex slider-->
<script src="<c:url value="/resources/Buyer/js/imagezoom.js"/>"></script>
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
	rel="stylesheet" type="text/css">
<!--web-fonts-->
<!--animation-effect-->
<link href="<c:url value="/resources/Buyer/css/animate.min.css" />"
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
						<a href="${pageContext.request.contextPath}/b_index">Prints<b>ALive</b><span
							class="tag">Slogan </span>
						</a>
					</h1>
				</div>
				<div class="nav navbar-nav navbar-right header-two-right">
					<%
						if (session.getAttribute("buyer_id") == null) {
					%>
					<div class="header-right my-account">
						<a href="${pageContext.request.contextPath}/b_login"><span
							class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
							Login</a>
					</div>
					<%
						} else {
					%>
					<div class="header-right my-account">
						<a href="javascript:go()"><span
							class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
							Logout</a>
					</div>
					<%
						}
					%>

					<div class="header-right cart">
						<a href="${pageContext.request.contextPath}/b_view_cart"><span
							class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></a>
						<h4>
							<a href="${pageContext.request.contextPath}/b_view_cart"> <span
								class="simpleCart_total"> $0.00 </span>
							</a>
						</h4>
						<div class="cart-box">
							<p>
								<a href="${pageContext.request.contextPath}/b_view_cart"
									class="simpleCart_empty">View Cart</a>
							</p>
							<div class="clearfix"></div>
						</div>
					</div>
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


							<li class="dropdown grid"><a href="#"
								class="dropdown-toggle list1" data-toggle="dropdown">Profile<b
									class="caret"></b></a>
								<ul class="dropdown-menu multi-column menu-two multi-column3">
									<div class="row">
										<div class="col-sm-4 menu-grids">
											<ul class="multi-column-dropdown">
												<li><a class="list"
													href="${pageContext.request.contextPath}/b_edit_profile/${buyer_id}">Edit
														Profile</a></li>
												<li><a class="list"
													href="${pageContext.request.contextPath}/b_change_password">Change
														Password</a></li>
											</ul>
										</div>
										<div class="col-sm-8 menu-grids">
											<a href="products.html">
												<div class="new-add">
													<h5>
														30% OFF <br> Today Only
													</h5>
												</div>
											</a>
										</div>
										<div class="clearfix"></div>
									</div>
								</ul></li>

							<li><a href="${pageContext.request.contextPath}/b_aboutus">About
									Us</a></li>
							<li><a href="${pageContext.request.contextPath}/b_view_cart">Cart</a></li>
							<li><a
								href="${pageContext.request.contextPath}/b_view_order">View
									Confirm Orders</a></li>
							<li><a
								href="${pageContext.request.contextPath}/b_add_feedback">Feedback</a></li>
						</ul>
						<div class="clearfix"></div>
						<!--//navbar-collapse-->
						<header class="cd-main-header">
							<ul class="cd-header-buttons">
								<li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
							</ul>
							<!-- cd-header-buttons -->
						</header>
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
	<%
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Cache-Control", "no-store");
		response.setHeader("Pragma", "no-cache");
		response.setDateHeader("Expires", 0);
	%>

	<!--//header-->