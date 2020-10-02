<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
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
<script type="text/javascript"
	src="<c:url value="/resources/Buyer/js/jquery.countdown.min.js"/>"></script>
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
<script>
	function go() {
		window.location
				.replace(
						"b_logout",
						'window',
						'toolbar=1,location=1,directories=1,status=1,menubar=1,scrollbars=1,resizable=1');
		self.close()
	}
</script>
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
	src="<c:url value="/resources/Buyer/js/search.js"/>"></script>
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
	<c:set value="0" var="totalbill" scope="session" />

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
					<%
						if (session.getAttribute("buyer_id") == null) {
					
						%>
						<div class="header-right cart">
							<a
								href="${pageContext.request.contextPath}/b_login"><span
								class="" aria-hidden="true">
							</span>Register Now</a>
							</div>
					<%}else{ %>
					<%
						String fname = session.getAttribute("buyer_fname").toString();
						String lname = session.getAttribute("buyer_lname").toString();
					%>
					<c:forEach items="${hlist2}" var="buyer">
						<div class="header-right cart">
							<a
								href="${pageContext.request.contextPath}/b_edit_profile/${buyer.buyer_id}"><span
								class="" aria-hidden="true"><img alt=""
									src="<c:url value="/resources/Buyer/images/${buyer.propic}"/>" height="30px" width="30px" />
							</span></a>
							<div class="cart-box">
								<p>
									<a
										href="${pageContext.request.contextPath}/b_edit_profile/${buyer.buyer_id}"
										class="simpleCart_empty">Welcome! <%=fname%> <%=lname%></a>
								</p>
								<div class="clearfix"></div>
							</div>
						</div>
					</c:forEach>
<%} %>
					<c:forEach items="${cartlist}" var="vcart" begin="0" end="1">
						<c:set value="${totalbill+ (vcart.qty*vcart.discount)}"
							var="totalbill" scope="session" />
					</c:forEach>
					<div class="header-right cart">
						<a href="${pageContext.request.contextPath}/b_view_cart"><span
							class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></a>
						<h4>
							<a href="${pageContext.request.contextPath}/b_view_cart"> <span>
									<c:out value="${totalbill}"></c:out>
							</span>
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
											<a href="products.html"> <c:forEach items="${hlist2}"
													var="war">
													<div class="new-addme">
														<img alt=""
															src="<c:url value="/resources/Buyer/images/${war.propic}"/>"
															style="width: 200px; height: 200px;">

													</div>
												</c:forEach>
											</a>
										</div>
										<div class="clearfix"></div>
									</div>
								</ul></li>

							<li><a href="${pageContext.request.contextPath}/b_aboutus">About
									Us</a></li>
							<li><a
								href="${pageContext.request.contextPath}/b_view_discount">Discounts</a></li>
							<li><a href="${pageContext.request.contextPath}/b_view_cart">Cart</a></li>
							<li><a
								href="${pageContext.request.contextPath}/b_view_order">View
									Confirm Orders</a></li>
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
	<%
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Cache-Control", "no-store");
		response.setHeader("Pragma", "no-cache");
		response.setDateHeader("Expires", 0);
	%>

	<!--//header-->