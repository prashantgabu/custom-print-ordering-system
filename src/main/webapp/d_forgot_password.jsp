<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<title>Login</title>

<!-- Fontfaces CSS-->
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
		<div class="page-content--bge5"
			style="overflow-y: scroll; background-image: url('/springmvc/resources/Admin_Designer/images/b33.jpg');">
			<div class="container" style="margin-top: 250px;">
				<div class="login-wrap">
					<div class="login-content">
						<div class="login-logo">
							<a href="#"> <img
								src="<c:url value="/resources/Admin_Designer/images/syslogo.png" />"
								height="150" width="250px" alt="CoolAdmin">
							</a>
						</div>
						<div class="login-form">
							<form action="d_forgot_password_code" method="post">
								<div class="form-group">
									<label>Enter Registered Email Address</label> <input
										class="au-input au-input--full" type="email" name="email"
										placeholder="Email">
								</div>


								<button class="au-btn au-btn--block au-btn--green m-b-20"
									type="submit">Get Password</button>
							</form>
							<div class="register-link">
								<p>
									Don't you have account? <a href="d_register">Sign Up Here</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- Jquery JS-->
	<script
		src="<c:url value="/resources/Admin_Designer/vendor/jquery-3.2.1.min.js" />"></script>
	<!-- Bootstrap JS-->
	<script
		src="<c:url value="/resources/Admin_Designer/vendor/bootstrap-4.1/popper.min.js" />"></script>
	<script
		src="<c:url value="/resources/Admin_Designer/vendor/bootstrap-4.1/bootstrap.min.js" />"></script>
	<!-- Vendor JS       -->
	<script
		src="<c:url value="/resources/Admin_Designer/vendor/slick/slick.min.js" />"></script>
	<script
		src="<c:url value="/resources/Admin_Designer/vendor/wow/wow.min.js" />"></script>
	<script
		src="<c:url value="/resources/Admin_Designer/vendor/animsition/animsition.min.js" />"></script>
	<script
		src="<c:url value="/resources/Admin_Designer/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js" />">
		
	</script>
	<script
		src="<c:url value="/resources/Admin_Designer/vendor/counter-up/jquery.waypoints.min.js" />"></script>
	<script
		src="<c:url value="/resources/Admin_Designer/vendor/counter-up/jquery.counterup.min.js" />">
		
	</script>
	<script
		src="<c:url value="/resources/Admin_Designer/vendor/circle-progress/circle-progress.min.js" />"></script>
	<script
		src="<c:url value="/resources/Admin_Designer/vendor/perfect-scrollbar/perfect-scrollbar.js" />"></script>
	<script
		src="<c:url value="/resources/Admin_Designer/vendor/chartjs/Chart.bundle.min.js" />"></script>
	<script
		src="<c:url value="/resources/Admin_Designer/vendor/select2/select2.min.js" />"></script>

	<!-- Main JS-->
	<script src="<c:url value="/resources/Admin_Designer/js/main.js" />"></script>

</body>

</html>
<!-- end document-->