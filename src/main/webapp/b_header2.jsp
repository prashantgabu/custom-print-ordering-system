<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<div class="top-header navbar navbar-default">
			<!--header-one-->
			<div class="container">
				<div class="nav navbar-nav wow fadeInLeft animated"
					data-wow-delay=".5s">
					<p>
						Welcome to Printsalive<a href="register.html">Register </a> Or
						<a href="signin.html">Sign In </a>
					</p>
				</div>
				<div
					class="nav navbar-nav navbar-right social-icons wow fadeInRight animated"
					data-wow-delay=".5s">
					<ul>
						<li><a href="#"> </a></li>
						<li><a href="#" class="pin"> </a></li>
						<li><a href="#" class="in"> </a></li>
						<li><a href="#" class="be"> </a></li>
						<li><a href="#" class="you"> </a></li>
						<li><a href="#" class="vimeo"> </a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="header-two navbar navbar-default">
			<!--header-two-->
			<div class="container">
				<div class="nav navbar-nav header-two-left">
					<ul>
						<li><i class="glyphicon glyphicon-earphone"
							aria-hidden="true"></i>+1234 567 892</li>
						<li><i class="glyphicon glyphicon-envelope"
							aria-hidden="true"></i><a href="mailto:info@example.com">mail@example.com</a></li>
					</ul>
				</div>
				<div class="nav navbar-nav logo wow zoomIn animated"
					data-wow-delay=".7s">
					<h1>
						<a href="index.html">Modern <b>Shoppe</b><span class="tag">Everything
								for Kids world </span>
						</a>
					</h1>
				</div>
				<div class="nav navbar-nav navbar-right header-two-right">
					<div class="header-right my-account">
						<a href="b_logout"><span
							class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
							CONTACT US</a>
					</div>
					<div class="header-right cart">
						<a href="#"><span class="glyphicon glyphicon-shopping-cart"
							aria-hidden="true"></span></a>
						<h4>
							<a href="checkout.html"> <span class="simpleCart_total">
									$0.00 </span> (<span id="simpleCart_quantity"
								class="simpleCart_quantity"> 0 </span>)
							</a>
						</h4>
						<div class="cart-box">
							<p>
								<a href="javascript:;" class="simpleCart_empty">Empty cart</a>
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
							<li><a href="b_index" class="active">Home</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Baby<b class="caret"></b></a>
								<ul class="dropdown-menu multi-column multi-column1">
									<div class="row">
										<div class="col-sm-4 menu-grids menulist1">
											<h4>Bath & Care</h4>
											<ul class="multi-column-dropdown ">
												<li><a class="list" href="products.html">Diapering</a></li>
												<li><a class="list" href="products.html">Baby Wipes</a></li>
												<li><a class="list" href="products.html">Baby Soaps</a></li>
												<li><a class="list" href="products.html">Lotions &
														Oils </a></li>
												<li><a class="list" href="products.html">Powders</a></li>
												<li><a class="list" href="products.html">Shampoos</a></li>
											</ul>
											<ul class="multi-column-dropdown">
												<li><a class="list" href="products.html">Body Wash</a></li>
												<li><a class="list" href="products.html">Cloth
														Diapers</a></li>
												<li><a class="list" href="products.html">Baby
														Nappies</a></li>
												<li><a class="list" href="products.html">Medical
														Care</a></li>
												<li><a class="list" href="products.html">Grooming</a></li>
												<li><h6>
														<a class="list" href="products.html">Combo Packs</a>
													</h6></li>
											</ul>
										</div>
										<div class="col-sm-2 menu-grids">
											<h4>Baby Clothes</h4>
											<ul class="multi-column-dropdown">
												<li><a class="list" href="products.html">Onesies &
														Rompers</a></li>
												<li><a class="list" href="products.html">Frocks</a></li>
												<li><a class="list" href="products.html">Socks &
														Tights</a></li>
												<li><a class="list" href="products.html">Sweaters &
														Caps</a></li>
												<li><a class="list" href="products.html">Night Wear</a></li>
												<li><a class="list" href="products.html">Quilts &
														Wraps</a></li>
											</ul>
										</div>
										<div class="col-sm-3 menu-grids">
											<ul class="multi-column-dropdown">
												<li><a class="list" href="products.html">Blankets</a></li>
												<li><a class="list" href="products.html">Gloves &
														Mittens</a></li>
												<h4>Shop by Age</h4>
												<li><a class="list" href="products.html">New Born
														(0 - 5 M)</a></li>
												<li><a class="list" href="products.html">5 - 10
														Months</a></li>
												<li><a class="list" href="products.html">10 - 15
														Months</a></li>
												<li><a class="list" href="products.html">15 Months
														Above</a></li>
											</ul>
										</div>
										<div class="col-sm-3 menu-grids">
											<ul class="multi-column-dropdown">
												<li><h6>
														<a class="list" href="products.html">Feeding & Nursing</a>
													</h6></li>
												<h4>Baby Gear</h4>
												<li><a class="list" href="products.html">Baby
														Walkers</a></li>
												<li><a class="list" href="products.html">Strollers</a></li>
												<li><a class="list" href="products.html">Prams &
														Toys</a></li>
												<li><a class="list" href="products.html">Cribs &
														Cradles</a></li>
												<li><a class="list" href="products.html">Booster
														Seats</a></li>
											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
								</ul></li>
							<li class="dropdown grid"><a href="#"
								class="dropdown-toggle list1" data-toggle="dropdown">Kids<b
									class="caret"></b></a>
								<ul class="dropdown-menu multi-column multi-column2">
									<div class="row">
										<div class="col-sm-3 menu-grids">
											<h4>New Arrivals</h4>
											<ul class="multi-column-dropdown">
												<li><a class="list" href="products.html">Topwear</a></li>
												<li><a class="list" href="products.html">Bottomwear</a></li>
												<li><a class="list" href="products.html">Innerwear</a></li>
												<li><a class="list" href="products.html">Nightwear</a></li>
												<li><a class="list" href="products.html">Swimwear</a></li>
												<li><a class="list" href="products.html">Jumpers</a></li>
											</ul>
										</div>
										<div class="col-sm-3 menu-grids">
											<h4>Boys</h4>
											<ul class="multi-column-dropdown">
												<li><a class="list" href="products.html">Jeans</a></li>
												<li><a class="list" href="products.html">Shirts</a></li>
												<li><a class="list" href="products.html">T-shirts</a></li>
												<li><a class="list" href="products.html">Dhoti
														Kurta Sets</a></li>
												<li><a class="list" href="products.html">Winter
														wear</a></li>
												<li><a class="list" href="products.html">Party Wear</a></li>
											</ul>
										</div>
										<div class="col-sm-3 menu-grids">
											<h4>Girls</h4>
											<ul class="multi-column-dropdown">
												<li><a class="list" href="products.html">Tops</a></li>
												<li><a class="list" href="products.html">Leggings</a></li>
												<li><a class="list" href="products.html">Dresses </a></li>
												<li><a class="list" href="products.html">Skirts</a></li>
												<li><a class="list" href="products.html">Casual
														Dresses</a></li>
												<li><a class="list" href="products.html">Capris &
														3/4ths</a></li>
											</ul>
										</div>
										<div class="col-sm-3 menu-grids new-add2">
											<a href="products.html">
												<h6>Kids Special</h6> <img src="images/img1.jpg" alt="">
											</a>
										</div>
										<div class="clearfix"></div>
									</div>
								</ul></li>
							<li class="dropdown grid"><a href="#"
								class="dropdown-toggle list1" data-toggle="dropdown">Accessories<b
									class="caret"></b></a>
								<ul class="dropdown-menu multi-column menu-two multi-column3">
									<div class="row">
										<div class="col-sm-4 menu-grids">
											<ul class="multi-column-dropdown">
												<li><a class="list" href="products.html">Jewellery</a></li>
												<li><a class="list" href="products.html">Hair bands
														& Clips</a></li>
												<li><a class="list" href="products.html">Bangles </a></li>
												<li><a class="list" href="products.html">Caps &
														Belts</a></li>
												<li><a class="list" href="products.html">Rain wear</a></li>
												<li><a class="list" href="products.html">Bags</a></li>
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
							<li class="dropdown grid"><a href="#"
								class="dropdown-toggle list1" data-toggle="dropdown">Toys <b
									class="caret"></b></a>
								<ul class="dropdown-menu multi-column multi-column4">
									<div class="row">
										<div class="col-sm-4 menu-grids menulist1">
											<h4>BABY</h4>
											<ul class="multi-column-dropdown ">
												<li><a class="list" href="products.html">Rockers</a></li>
												<li><a class="list" href="products.html">Rattles</a></li>
												<li><a class="list" href="products.html">Stroller
														Toys</a></li>
												<li><a class="list" href="products.html">Musical
														Toys </a></li>
												<li><a class="list" href="products.html">Doll
														Houses</a></li>
												<li><a class="list" href="products.html">Play Sets</a></li>
											</ul>
											<ul class="multi-column-dropdown">
												<li><a class="list" href="products.html">Toys Dolls</a></li>
												<li><a class="list" href="products.html">Pacifiers</a></li>
												<li><a class="list" href="products.html">Building
														Sets</a></li>
												<li><a class="list" href="products.html">Bath Toys</a></li>
												<li><a class="list" href="products.html">Soft Toys</a></li>
												<li><h6>
														<a class="list" href="products.html">Special Off</a>
													</h6></li>
											</ul>
										</div>
										<div class="col-sm-2 menu-grids">
											<h4>Pretend Play</h4>
											<ul class="multi-column-dropdown">
												<li><h6>
														<a class="list" href="products.html">Video Games</a>
													</h6></li>
												<li><a class="list" href="products.html">Kitchen
														Sets</a></li>
												<li><a class="list" href="products.html">Sand Toys</a></li>
												<li><a class="list" href="products.html">Tool Sets</a></li>
												<li><a class="list" href="products.html">Bath Toys</a></li>
												<li><a class="list" href="products.html">Medical
														Set</a></li>
											</ul>
										</div>
										<div class="col-sm-2 menu-grids">
											<h4>Outdoor</h4>
											<ul class="multi-column-dropdown">
												<li><a class="list" href="products.html">Swimming</a></li>
												<li><a class="list" href="products.html">Rideons </a></li>
												<li><a class="list" href="products.html">Scooters</a></li>
												<li><a class="list" href="products.html">Remote
														Control</a></li>
												<li><a class="list" href="products.html">Animals</a></li>
												<li><a class="list" href="products.html">Make up</a></li>
											</ul>
										</div>
										<div class="col-sm-4 menu-grids">
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
							<li><a href="codes.html">Special Offers</a></li>
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
	<!--//header-->