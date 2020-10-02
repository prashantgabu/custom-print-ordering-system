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
		<div class="top-header navbar navbar-default">
			<!--header-one-->
			<div class="container">
				<div class="nav navbar-nav wow fadeInLeft animated"
					data-wow-delay=".5s">
					<h2>
						Welcome to Modern Shoppe <a href="register.html">Register </a> Or
						<a href="signin.html">Sign In </a>
					</h2>
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
						<a href="contact.html"><span
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
							<li><a href="index.html">Home</a></li>
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
	<!--breadcrumbs-->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft"
				data-wow-delay=".5s">
				<li><a href="index.html"><span
						class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Single page</li>
			</ol>
		</div>
	</div>
	<!--//breadcrumbs-->
	<!--single-page-->

	<div class="single">
		<div class="container">
			<c:forEach items="${list}" var="sing">
				<div class="single-info">
					<div class="col-md-6 single-top wow fadeInLeft animated"
						data-wow-delay=".5s">
						<div class="flexslider">
							<ul class="slides">
								<li
									data-thumb="<c:url value="/resources/Buyer/images/${sing.photo_1}"/>">
									<div class="thumb-image">
										<img
											src="<c:url value="/resources/Buyer/images/${sing.photo_1}"/> "
											data-imagezoom="true" class="img-responsive" alt="">
									</div>
								</li>
								<li
									data-thumb="<c:url value="/resources/Buyer/images/${sing.photo_2}"/>">
									<div class="thumb-image">
										<img
											src="<c:url value="/resources/Buyer/images/${sing.photo_2}" />"
											data-imagezoom="true" class="img-responsive" alt="">
									</div>
								</li>
								<li
									data-thumb="<c:url value="/resources/Buyer/images/${sing.photo_3}"/>">
									<div class="thumb-image">
										<img
											src="<c:url value="/resources/Buyer/images/${sing.photo_3}"/>"
											data-imagezoom="true" class="img-responsive" alt="">
									</div>
								</li>
							</ul>
						</div>
					</div>
					<div
						class="col-md-6 single-top-left simpleCart_shelfItem wow fadeInRight animated"
						data-wow-delay=".5s">
						<h3>${sing.name}</h3>
						<div class="single-rating">
							<span class="starRating"> <input id="rating5" type="radio"
								name="rating" value="5" checked> <label for="rating5">5</label>
								<input id="rating4" type="radio" name="rating" value="4">
								<label for="rating4">4</label> <input id="rating3" type="radio"
								name="rating" value="3"> <label for="rating3">3</label>
								<input id="rating2" type="radio" name="rating" value="2">
								<label for="rating2">2</label> <input id="rating1" type="radio"
								name="rating" value="1"> <label for="rating1">1</label>
							</span>
							<p>5.00 out of 5</p>
							<a href="#">Add Your Review</a>
						</div>
						<h6 class="item_price">

							Rs : ${sing.price} /-

							<c:set value="100" var="discount" scope="session" />
							<c:forEach var="listdis" items="${listdis}">
						You get Discount of ${listdis.dis_amt} % 
						<c:set value="${listdis.dis_amt}" var="discount" scope="session" />
							</c:forEach>
							<c:if test="${(discount * sing.price /100)>0}">
								<c:out value="${discount * sing.price /100 } " />
							</c:if>
						</h6>
						<br>
						<div class="clearfix"></div>
						<form action="../b_add_bannercart_code" method="get">
							<input type="hidden" value="${sing.design_id}" name="design_id">
							<div class="form-group">
								<p class="qty">Upload Design:</p>
								<input type="file" name="picture_1" class="form-control">
							</div>
							<div class="form-group">
								<p class="qty">Upload Logo:</p>
								<input type="file" name="picture_2" class="form-control">
							</div>
							<div class="quantity">
								<input type="hidden" name="dis"
									value="${discount * sing.price /100 } " class="item_quantity">
							</div>
							<div class="quantity">
								<p class="qty">Qty :</p>
								<input min="1" type="number" name="quant" value="1"
									class="item_quantity">
							</div>
							<div class="btn_form">
								<input type="submit" value="Add To Cart">
							</div>
						</form>

					</div>
					<div class="clearfix"></div>
				</div>
				<!--collapse-tabs-->
				<div class="collpse tabs">
					<div class="panel-group collpse" id="accordion" role="tablist"
						aria-multiselectable="true">
						<div class="panel panel-default wow fadeInUp animated"
							data-wow-delay=".5s">
							<div class="panel-heading" role="tab" id="headingOne">
								<h4 class="panel-title">
									<a role="button" data-toggle="collapse"
										data-parent="#accordion" href="#collapseOne"
										aria-expanded="true" aria-controls="collapseOne">
										Description </a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in"
								role="tabpanel" aria-labelledby="headingOne">
								<div class="panel-body">${sing.detail}</div>
							</div>
						</div>

						<div class="panel panel-default wow fadeInUp animated"
							data-wow-delay=".7s">
							<div class="panel-heading" role="tab" id="headingThree">
								<h4 class="panel-title">
									<a class="collapsed" role="button" data-toggle="collapse"
										data-parent="#accordion" href="#collapseThree"
										aria-expanded="false" aria-controls="collapseThree">
										reviews (<span>${rev_len}</span>)
									</a>
								</h4>
							</div>
							<div id="collapseThree" class="panel-collapse collapse"
								role="tabpanel" aria-labelledby="headingThree">
								<div class="panel-body">
									<c:forEach items="${list1}" var="re">


										<p>${re.review_msg}${re.rating}</p>


										<c:if test="${re.rating==5}">

											<img src='<c:url value="/resources/Buyer/images/star1.png"/>' />
											<img src='<c:url value="/resources/Buyer/images/star1.png"/>' />
											<img src='<c:url value="/resources/Buyer/images/star1.png"/>' />
											<img src='<c:url value="/resources/Buyer/images/star1.png"/>' />
											<img src='<c:url value="/resources/Buyer/images/star1.png"/>' />


										</c:if>
										<c:if test="${re.rating==4}">
											<img src='<c:url value="/resources/Buyer/images/star1.png"/>' />
											<img src='<c:url value="/resources/Buyer/images/star1.png"/>' />
											<img src='<c:url value="/resources/Buyer/images/star1.png"/>' />
											<img src='<c:url value="/resources/Buyer/images/star1.png"/>' />
											<img src='<c:url value="/resources/Buyer/images/star.png"/>' />

										</c:if>
										<c:if test="${re.rating==3}">

											<img src='<c:url value="/resources/Buyer/images/star1.png"/>' />
											<img src='<c:url value="/resources/Buyer/images/star1.png"/>' />
											<img src='<c:url value="/resources/Buyer/images/star1.png"/>' />
											<img src='<c:url value="/resources/Buyer/images/star.png"/>' />
											<img src='<c:url value="/resources/Buyer/images/star.png"/>' />


										</c:if>
										<c:if test="${re.rating==2}">
											<div class="single-rating">
												<span class="starRating"> <input id="rating5"
													type="radio" name="rating" value="5" disabled="disabled">
													<label for="rating5">5</label> <input id="rating4"
													type="radio" name="rating" value="4" disabled="disabled">
													<label for="rating4">4</label> <input id="rating3"
													type="radio" name="rating" value="3" disabled="disabled">
													<label for="rating3">3</label> <input id="rating2"
													type="radio" name="rating" value="2" checked="checked"
													disabled="disabled"> <label for="rating2">2</label>
													<input id="rating1" type="radio" name="rating" value="1"
													disabled="disabled"> <label for="rating1">1</label>
												</span>
											</div>

										</c:if>
										<c:if test="${re.rating==1}">
											<div class="single-rating">
												<span class="starRating"> <input id="rating5"
													type="radio" name="rating" value="5" disabled="disabled">
													<label for="rating5">5</label> <input id="rating4"
													type="radio" name="rating" value="4" disabled="disabled">
													<label for="rating4">4</label> <input id="rating3"
													type="radio" name="rating" value="3" disabled="disabled">
													<label for="rating3">3</label> <input id="rating2"
													type="radio" name="rating" value="2" disabled="disabled">
													<label for="rating2">2</label> <input id="rating1"
													type="radio" name="rating" value="1" checked="checked"
													disabled="disabled"> <label for="rating1">1</label>
												</span>
											</div>

										</c:if>






									</c:forEach>


								</div>
							</div>
						</div>
						<div class="panel panel-default wow fadeInUp animated"
							data-wow-delay=".8s">
							<div class="panel-heading" role="tab" id="headingFour">
								<h4 class="panel-title">
									<a class="collapsed" role="button" data-toggle="collapse"
										data-parent="#accordion" href="#collapseFour"
										aria-expanded="false" aria-controls="collapseFour"> help </a>
								</h4>
							</div>
							<div id="collapseFour" class="panel-collapse collapse"
								role="tabpanel" aria-labelledby="headingFour">
								<div class="panel-body">Anim pariatur cliche
									reprehenderit, enim eiusmod high life accusamus terry
									richardson ad squid. 3 wolf moon officia aute, non cupidatat
									skateboard dolor brunch. Food truck quinoa nesciunt laborum
									eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on
									it squid single-origin coffee nulla assumenda shoreditch et.
									Nihil anim keffiyeh helvetica, craft beer labore wes anderson
									cred nesciunt sapiente ea proident. Ad vegan excepteur butcher
									vice lomo. Leggings occaecat craft beer farm-to-table, raw
									denim aesthetic synth nesciunt you probably haven't heard of
									them accusamus labore sustainable VHS.</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			<!--//collapse -->
			<!--related-products-->
			<div class="related-products">
				<div class="title-info wow fadeInUp animated" data-wow-delay=".5s">
					<h3 class="title">
						Related<span> Products</span>
					</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit
						curabitur</p>
				</div>
				<div class="related-products-info">
					<div
						class="col-md-3 new-grid simpleCart_shelfItem wow flipInY animated"
						data-wow-delay=".5s">
						<div class="new-top">
							<a href="single.html"><img src="images/g9.jpg"
								class="img-responsive" alt="" /></a>
							<div class="new-text">
								<ul>
									<li><a class="item_add" href=""> Add to cart</a></li>
									<li><a href="single.html">Quick View </a></li>
									<li><a href="products.html">Show Details </a></li>
								</ul>
							</div>
						</div>
						<div class="new-bottom">
							<h5>
								<a class="name" href="single.html">Baby Red Dress </a>
							</h5>
							<div class="rating">
								<span class="on">☆</span> <span class="on">☆</span> <span
									class="on">☆</span> <span class="on">☆</span> <span>☆</span>
							</div>
							<div class="ofr">
								<p class="pric1">
									<del>$2000.00</del>
								</p>
								<p>
									<span class="item_price">$500</span>
								</p>
							</div>
						</div>
					</div>
					<div
						class="col-md-3 new-grid new-mdl simpleCart_shelfItem wow flipInY animated"
						data-wow-delay=".7s">
						<div class="new-top">
							<a href="single.html"><img src="images/g10.jpg"
								class="img-responsive" alt="" /></a>
							<div class="new-text">
								<ul>
									<li><a class="item_add" href=""> Add to cart</a></li>
									<li><a href="single.html">Quick View </a></li>
									<li><a href="products.html">Show Details </a></li>
								</ul>
							</div>
						</div>
						<div class="new-bottom">
							<h5>
								<a class="name" href="single.html">Crocs Sandals </a>
							</h5>
							<div class="rating">
								<span class="on">☆</span> <span class="on">☆</span> <span
									class="on">☆</span> <span class="on">☆</span> <span>☆</span>
							</div>
							<div class="ofr">
								<p class="pric1">
									<del>$2000.00</del>
								</p>
								<p>
									<span class="item_price">$500</span>
								</p>
							</div>
						</div>
					</div>
					<div
						class="col-md-3 new-grid new-mdl1 simpleCart_shelfItem wow flipInY animated"
						data-wow-delay=".9s">
						<div class="new-top">
							<a href="single.html"><img src="images/g11.jpg"
								class="img-responsive" alt="" /></a>
							<div class="new-text">
								<ul>
									<li><a class="item_add" href=""> Add to cart</a></li>
									<li><a href="single.html">Quick View </a></li>
									<li><a href="products.html">Show Details </a></li>
								</ul>
							</div>
						</div>
						<div class="new-bottom">
							<h5>
								<a class="name" href="single.html">Pink Sip Cup </a>
							</h5>
							<div class="rating">
								<span class="on">☆</span> <span class="on">☆</span> <span
									class="on">☆</span> <span class="on">☆</span> <span>☆</span>
							</div>
							<div class="ofr">
								<p class="pric1">
									<del>$2000.00</del>
								</p>
								<p>
									<span class="item_price">$500</span>
								</p>
							</div>
						</div>
					</div>
					<div
						class="col-md-3 new-grid simpleCart_shelfItem wow flipInY animated"
						data-wow-delay="1.1s">
						<div class="new-top">
							<a href="single.html"><img src="images/g12.jpg"
								class="img-responsive" alt="" /></a>
							<div class="new-text">
								<ul>
									<li><a class="item_add" href=""> Add to cart</a></li>
									<li><a href="single.html">Quick View </a></li>
									<li><a href="products.html">Show Details </a></li>
								</ul>
							</div>
						</div>
						<div class="new-bottom">
							<h5>
								<a class="name" href="single.html">Child Print Bike </a>
							</h5>
							<div class="rating">
								<span class="on">☆</span> <span class="on">☆</span> <span
									class="on">☆</span> <span class="on">☆</span> <span>☆</span>
							</div>
							<div class="ofr">
								<p class="pric1">
									<del>$2000.00</del>
								</p>
								<p>
									<span class="item_price">$500</span>
								</p>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!--//related-products-->
		</div>
	</div>
	<!--//single-page-->
	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-info">
				<div class="col-md-4 footer-grids wow fadeInUp animated"
					data-wow-delay=".5s">
					<h4 class="footer-logo">
						<a href="index.html">Modern <b>Shoppe</b> <span class="tag">Everything
								for Kids world </span>
						</a>
					</h4>
					<p>
						© 2016 Modern Shoppe . All rights reserved | Design by <a
							href="http://w3layouts.com" target="_blank">W3layouts</a>
					</p>
				</div>
				<div class="col-md-4 footer-grids wow fadeInUp animated"
					data-wow-delay=".7s">
					<h3>Popular</h3>
					<ul>
						<li><a href="about.html">About Us</a></li>
						<li><a href="products.html">new</a></li>
						<li><a href="contact.html">Contact Us</a></li>
						<li><a href="faq.html">FAQ</a></li>
						<li><a href="checkout.html">Wishlist</a></li>
					</ul>
				</div>
				<div class="col-md-4 footer-grids wow fadeInUp animated"
					data-wow-delay=".9s">
					<h3>Subscribe</h3>
					<p>
						Sign Up Now For More Information <br> About Our Company
					</p>
					<form>
						<input type="text" placeholder="Enter Your Email" required="">
						<input type="submit" value="Go">
					</form>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//footer-->
	<!--search jQuery-->
	<script src="<c:url value="/resources/Buyer/js/main.js"/>"></script>
	<!--//search jQuery-->
	<!--smooth-scrolling-of-move-up-->
	<script type="text/javascript">
		$(document).ready(function() {

			var defaults = {
				containerID : 'toTop', // fading element id
				containerHoverID : 'toTopHover', // fading element hover id
				scrollSpeed : 1200,
				easingType : 'linear'
			};

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<!--//smooth-scrolling-of-move-up-->
	<!--Bootstrap core JavaScript
    ================================================== -->
	<!--Placed at the end of the document so the pages load faster -->
	<script src="<c:url value="/resources/Buyer/js/bootstrap.js"/>"></script>
</body>
</html>