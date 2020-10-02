<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="au theme template">
<meta name="author" content="Hau Nguyen">
<meta name="keywords" content="au theme template">

<!-- Title Page-->
<title>Tables</title>
<!-- Fontfaces CSS-->
<script
	src="<c:url value="/resources/Admin_Designer/js/search.js" />"></script>
<link
	href="<c:url value="/resources/Admin_Designer/css/font-face.css"/>"
	rel="stylesheet" media="all">


<link
	href="<c:url value="/resources/Admin_Designer/vendor/font-awesome-4.7/css/font-awesome.min.css"/>"
	rel="stylesheet" media="all">
<link
	href="<c:url value="/resources/Admin_Designer/vendor/font-awesome-5/css/fontawesome-all.min.css" />"
	rel="stylesheet" media="all">
<link
	href="<c:url value="/resources/Admin_Designer/vendor/mdi-font/css/material-design-iconic-font.min.css"/>"
	rel="stylesheet" media="all">

<!-- Bootstrap CSS-->
<link
	href="<c:url value="/resources/Admin_Designer/vendor/bootstrap-4.1/bootstrap.min.css" />"
	rel="stylesheet" media="all">

<!-- Vendor CSS-->
<link
	href="<c:url value="/resources/Admin_Designer/vendor/animsition/animsition.min.css" />"
	rel="stylesheet" media="all">
<link
	href="<c:url value="/resources/Admin_Designer/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" />"
	rel="stylesheet" media="all">
<link
	href="<c:url value="/resources/Admin_Designer/vendor/wow/animate.css" />"
	rel="stylesheet" media="all">
<link
	href="<c:url value="/resources/Admin_Designer/vendor/css-hamburgers/hamburgers.min.css" />"
	rel="stylesheet" media="all">
<link
	href="<c:url value="/resources/Admin_Designer/vendor/slick/slick.css" />"
	rel="stylesheet" media="all">
<link
	href="<c:url value="/resources/Admin_Designer/vendor/select2/select2.min.css" />"
	rel="stylesheet" media="all">
<link
	href="<c:url value="/resources/Admin_Designer/vendor/perfect-scrollbar/perfect-scrollbar.css" />"
	rel="stylesheet" media="all">

<!-- Main CSS-->
<link href="<c:url value="/resources/Admin_Designer/css/theme.css" />"
	rel="stylesheet" media="all">
</head>

<body class="animsition">
	<div class="page-wrapper">
		<!-- HEADER MOBILE-->
		<header class="header-mobile d-block d-lg-none">
			<div class="header-mobile__bar">
				<div class="container-fluid">
					<div class="header-mobile-inner">
						<a class="logo" href="index.html"> <img
							src="images/icon/logo.png" alt="CoolAdmin" />
						</a>
						<button class="hamburger hamburger--slider" type="button">
							<span class="hamburger-box"> <span class="hamburger-inner"></span>
							</span>
						</button>
					</div>
				</div>
			</div>
			<nav class="navbar-mobile">
				<div class="container-fluid">
					<ul class="navbar-mobile__list list-unstyled">
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-tachometer-alt"></i>Dashboard
						</a>
							<ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
								<li><a href="index.html">Dashboard 1</a></li>
								<li><a href="index2.html">Dashboard 2</a></li>
								<li><a href="index3.html">Dashboard 3</a></li>
								<li><a href="index4.html">Dashboard 4</a></li>
							</ul></li>
						<li><a href="chart.html"> <i class="fas fa-chart-bar"></i>Charts
						</a></li>
						<li><a href="table.html"> <i class="fas fa-table"></i>Tables
						</a></li>
						<li><a href="form.html"> <i class="far fa-check-square"></i>Forms
						</a></li>
						<li><a href="#"> <i class="fas fa-calendar-alt"></i>Calendar
						</a></li>
						<li><a href="map.html"> <i class="fas fa-map-marker-alt"></i>Maps
						</a></li>
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-copy"></i>Pages
						</a>
							<ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
								<li><a href="login.html">Login</a></li>
								<li><a href="register.html">Register</a></li>
								<li><a href="forget-pass.html">Forget Password</a></li>
							</ul></li>
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-desktop"></i>UI Elements
						</a>
							<ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
								<li><a href="button.html">Button</a></li>
								<li><a href="badge.html">Badges</a></li>
								<li><a href="tab.html">Tabs</a></li>
								<li><a href="card.html">Cards</a></li>
								<li><a href="alert.html">Alerts</a></li>
								<li><a href="progress-bar.html">Progress Bars</a></li>
								<li><a href="modal.html">Modals</a></li>
								<li><a href="switch.html">Switchs</a></li>
								<li><a href="grid.html">Grids</a></li>
								<li><a href="fontawesome.html">Fontawesome Icon</a></li>
								<li><a href="typo.html">Typography</a></li>
							</ul></li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- END HEADER MOBILE-->

		<!-- MENU SIDEBAR-->
		<aside class="menu-sidebar d-none d-lg-block">
			<div class="logo">
				<a href="${pageContext.request.contextPath}/A_index"> <img
					src="<c:url value="/resources/Admin_Designer/images/syslogo.png"/>"
					 alt="Logo" width="900px" />
				</a>
			</div>
			<div class="menu-sidebar__content js-scrollbar1">
				<nav class="navbar-sidebar">
					<ul class="list-unstyled navbar__list">
						<li class="has-sub"><a class="js-arrow"
							href="${pageContext.request.contextPath}/A_index"> <i
								class="fas fa-tachometer-alt"></i>Dashboard
						</a>
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-copy"></i>Category
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a href="${pageContext.request.contextPath}/A_add_cat">Add
										Category</a></li>
								<li><a href="${pageContext.request.contextPath}/A_view_cat">View
										Category</a></li>
							</ul></li>
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-copy"></i>Sub Category
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a
									href="${pageContext.request.contextPath}/A_add_subcat">Add
										Subcategory</a></li>
								<li><a
									href="${pageContext.request.contextPath}/A_view_subcat">View
										Subcategory</a></li>
							</ul></li>
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-copy"></i>Designers
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a
									href="${pageContext.request.contextPath}/A_view_pdesigner">Verify
										Designers</a></li>
								<li><a
									href="${pageContext.request.contextPath}/A_view_vdesigner">Verified
										Designers</a></li>
							</ul></li>
						<li class="has-sub"><a class="js-arrow" href="${pageContext.request.contextPath}/A_view_buyer">
								<i class="fas fa-copy"></i>Buyers
						</a></li>
						<li class="has-sub"><a class="js-arrow" href="${pageContext.request.contextPath}/A_chart">
								<i class="fas fa-copy"></i>No. Of Orders
						</a></li>
						
						<li class="has-sub"><a class="js-arrow"
							href="${pageContext.request.contextPath}/A_view_feedback"> <i class="fas fa-copy"></i>Feedback
						</a></li>
					</ul>
				</nav>
			</div>
		</aside>
		<!-- END MENU SIDEBAR-->

		<!-- PAGE CONTAINER-->
		<div class="page-container">
			<!-- HEADER DESKTOP-->
			<header class="header-desktop">
				<div class="section__content section__content--p30">
					<div class="container-fluid">
						<div class="header-wrap"style="margin-left: 1200px;">
							<c:forEach items="${hlist1}" var="ad"></c:forEach>
							<div class="header-button">
								<div class="noti-wrap">
									<div class="noti__item js-item-menu">
										<i class="zmdi zmdi-comment-more"></i> <span class="quantity">1</span>
										<div class="mess-dropdown js-dropdown">
											<div class="mess__title">
												<p>You have ${hlist1_len} new request(s)</p>
											</div>
											<div class="mess__footer">
												<a href="A_view_pdesigner">View all requests</a>
											</div>
										</div>
									</div>
								</div>
								<div class="account-wrap">
									<div class="account-item clearfix js-item-menu">
										<div class="image">
											<img
												src="<c:url value="/resources/Admin_Designer/images/icon/propic.jpeg"/>"
												alt="Prashant Gabu" />
										</div>
										<div class="content">
											<a class="js-acc-btn" href="#">Prashant Gabu</a>
										</div>
										<div class="account-dropdown js-dropdown">
											<div class="info clearfix">
												<div class="image">
													<a href="#"> <img
														src="<c:url value="/resources/Admin_Designer/images/icon/propic.jpeg"/>"
														alt="Propic" />
													</a>
												</div>
												<div class="content">
													<h5 class="name">
														<a href="#">Prashant GAbu</a>
													</h5>
													<span class="email">prashantg5399@gmail.com</span>
												</div>
											</div>
											<div class="account-dropdown__body">
												<div class="account-dropdown__item">
													<a href="${pageContext.request.contextPath}/A_view_pdesigner"> <i
														class="zmdi zmdi-account"></i>Requests
													</a>
												</div>
												<div class="account-dropdown__item">
													<a href="${pageContext.request.contextPath}/A_view_feedback"> <i
														class="zmdi zmdi-settings"></i>Feedbacks
													</a>
												</div>
											</div>
											<div class="account-dropdown__footer">
												<a href="${pageContext.request.contextPath}/A_logout"> <i class="zmdi zmdi-power"></i>Logout
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>
			<!-- END HEADER DESKTOP-->