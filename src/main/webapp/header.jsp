
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<style>
.custom-file-input::-webkit-file-upload-button {
	visibility: hidden;
}

.custom-file-input::before {
	content: 'Select some files';
	display: inline-block;
	background: linear-gradient(top, #f9f9f9, #e3e3e3);
	border: 1px solid #999;
	border-radius: 3px;
	padding: 5px 8px;
	outline: none;
	white-space: nowrap;
	-webkit-user-select: none;
	cursor: pointer;
	text-shadow: 1px 1px #fff;
	font-weight: 700;
	font-size: 10pt;
}

.custom-file-input:hover::before {
	border-color: black;
}

.custom-file-input:active::before {
	background: -webkit-linear-gradient(top, #e3e3e3, #f9f9f9);
}
</style>
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
<link
	href="<c:url value="/resources/Admin_Designer/css/font-face.css"/>"
	rel="stylesheet" media="all">
<link
	href="<c:url value="/resources/Admin_Designer/vendor/font-awesome-4.7/css/font-awesome.min.css"/>"
	rel="stylesheet" media="all">
<link
	href="<c:url value="/resources/Admin_Designer/css/img_modal.css"/>"
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
<script>
	function go() {
		window.location
				.replace(
						"d_logout",
						'window',
						'toolbar=1,location=1,directories=1,status=1,menubar=1,scrollbars=1,resizable=1');
		self.close()
	}
</script>
</head>

<body class="animsition">
	<div class="page-wrapper">
		<!-- HEADER MOBILE-->
		<header class="header-mobile d-block d-lg-none">
			<div class="header-mobile__bar">
				<div class="container-fluid">
					<div class="header-mobile-inner">
						<a class="logo" href="${pageContext.request.contextPath}/d_index"> <img
							src="<c:url value="/resources/Admin_Designer/images/syslogo.png" />"
							alt="Prashant " />
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
						<li><a href="b_logout"> <i class="fas fa-chart-bar"></i>Logout
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
				<a href="${pageContext.request.contextPath}/d_index"> <img
					src="<c:url value="/resources/Admin_Designer/images/icon/logo5.jpg" />"
					alt="Cool Admin" />
				</a>
			</div>
			<div class="menu-sidebar__content js-scrollbar1">
				<nav class="navbar-sidebar">
					<ul class="list-unstyled navbar__list">
						<li><a href="${pageContext.request.contextPath}/d_index">
								<i class="fas fa-chart-bar"></i>Dashboard
						</a></li>

						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-chart-bar"></i>Designs
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a
									href="${pageContext.request.contextPath}/d_add_design">Add
										Design</a></li>
								<li><a
									href="${pageContext.request.contextPath}/d_view_design">View
										Design</a></li>
							</ul></li>
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-chart-bar"></i>Discount
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a
									href="${pageContext.request.contextPath}/d_add_discount">Add
										Discount</a></li>
								<li><a
									href="${pageContext.request.contextPath}/d_view_discount">View
										Discount</a></li>
							</ul></li>
						<li><a href="${pageContext.request.contextPath}/d_view_order">
								<i class="fas fa-chart-bar"></i>Orders
						</a></li>


						<li><a
							href="${pageContext.request.contextPath}/d_add_feedback"> <i
								class="fas fa-chart-bar"></i>Feedback
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
						<div class="header-wrap">
							<form class="form-header" action="" method="POST">
								<input class="au-input au-input--xl" type="text" name="search"
									id="myInput" onkeyup="myFunctionSearch()"
									placeholder="Search for datas &amp; reports..." />
								<button class="au-btn--submit" type="submit">
									<i class="zmdi zmdi-search"></i>
								</button>
							</form>
							<c:forEach items="${hlist1}" var="he">
								<div class="header-button">
									<div class="noti-wrap">
										<div class="noti__item js-item-menu">
											<i class="zmdi zmdi-comment-more"></i> <span class="quantity">+</span>
											<div class="mess-dropdown js-dropdown">
												<div class="mess__title">
													<p>You have ${list3_len} New Order(s)</p>
												</div>
											</div>
										</div>

									</div>

									<div class="account-wrap">
										<div class="account-item clearfix js-item-menu">
											<div class="image">
												<img
													src="<c:url value="/resources/Admin_Designer/images/${he.propic}"/>"
													alt="Error" />
											</div>
											<div class="content">
												<a class="js-acc-btn" href="#">${he.name}</a>
											</div>
											<div class="account-dropdown js-dropdown">
												<div class="info clearfix">
													<div class="image">
														<a
															href="${pageContext.request.contextPath}/d_edit_profile/${he.designer_id}">
															<img
															src="<c:url value="/resources/Admin_Designer/images/${he.propic}"/>"
															alt="Error" />
														</a>
													</div>
													<div class="content">
														<h5 class="name">
															<a>${he.name}</a>
														</h5>
														<span class="email">${he.email}</span>
													</div>
												</div>
												<div class="account-dropdown__body">
													<div class="account-dropdown__item">
														<a
															href="${pageContext.request.contextPath}/d_edit_profile/${he.designer_id}">
															<i class="zmdi zmdi-account"></i>Account
														</a>
													</div>
													<div class="account-dropdown__item">
														<a
															href="${pageContext.request.contextPath}/d_change_password">
															<i class="zmdi zmdi-settings"></i>Change Password
														</a>
													</div>

												</div>
												<div class="account-dropdown__footer">
													<a href="javascript:go()"> <i class="zmdi zmdi-power"></i>Logout
													</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</header>

			<!-- END HEADER DESKTOP-->