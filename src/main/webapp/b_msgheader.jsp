
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
					</header>
		<!-- END HEADER MOBILE-->

		<!-- MENU SIDEBAR-->
		<aside class="menu-sidebar d-none d-lg-block">
			<div class="logo">
				<a href="${pageContext.request.contextPath}/d_index"> <img
					src="<c:url value="/resources/Admin_Designer/images/syslogo.png" />"
					alt="Cool Admin" />
				</a>
			</div>
			<div class="menu-sidebar__content js-scrollbar1">
				<nav class="navbar-sidebar">
					<ul class="list-unstyled navbar__list">
						<li><a href="${pageContext.request.contextPath}/b_index">
								<i class="fas fa-chart-bar"></i>Dashboard
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