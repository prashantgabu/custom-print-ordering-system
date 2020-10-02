<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="au theme template">
<meta name="author" content="Hau Nguyen">
<meta name="keywords" content="au theme template">

<!-- Title Page-->
<title>Register</title>
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
		<div class="page-content--bge5" style="overflow-y: scroll; background-image: url('/springmvc/resources/Admin_Designer/images/b33.jpg');"">
			<div class="container">
				<div class="login-wrap">
					<div class="login-content">
						<div class="login-logo">
							<a href="#"> <img
								src="<c:url value="/resources/Admin_Designer/images/syslogo.png"  />"
								alt="Logo">
							</a>
						</div>
						<div class="login-form">
							<form action="d_register_code" method="get" id="myform">
								<div class="form-group">
									<label>Name</label> <input class="au-input au-input--full"
										type="text" name="dname" placeholder="Name"
										pattern="[a-zA-Z ]*$" required >
								</div>
								<div class="form-group">
									<label>Email Address</label> <input
										class="au-input au-input--full" type="email" name="demail"
										placeholder="Email Address" required="required">
								</div>
								<div class="form-group">
									<label>Password</label> <input class="au-input au-input--full"
										type="hidden" name="dpwd" placeholder="Password"
										required="required">
								</div>
								<div class="form-group">
									<label>Profile Picture</label> <input
										class="au-input au-input--full form-control" type="file"
										name="dphoto" placeholder="Upload Your Photo">
								</div>
								<div class="form-group">
									<label>Date Of Birth</label> <input
										class="au-input au-input--full" type="date" name="dob"
										placeholder="Select Birthdate" max="2019-10-15"
										required="required">
								</div>
								<div class="form-group">
									<label>GST No.</label> <input id="input-gst" class="au-input au-input--full"
										type="text" name="dgst"
										placeholder="It's just to verify you !" required="required">
								</div>
								<div class="form-group">
									<label>Home Address</label> <input
										class="au-input au-input--full" type="text" name="dhaddress"
										placeholder="Home Address" required="required">
								</div>
								<div class="form-group">
									<label>Office/Shop Name</label> <input
										class="au-input au-input--full" type="text" name="pstorename"
										placeholder="Office/Shop Name" required="required">
								</div>
								<div class="form-group">
									<label>Office/Shop Address</label> <input
										class="au-input au-input--full" type="text" name="doaddress"
										placeholder="Office/Shop Address" required="required">
								</div>

								<div class="form-group">
									<label>Contact Number</label> <input
										class="au-input au-input--full" type="number" name="dcontact"
										placeholder="Contact Number" required="required">
								</div>

								<div class="form-group">
									<label>City</label> <input class="au-input au-input--full"
										type="text" name="dcity" placeholder="City"
										required="required">
								</div>

								<div class="login-checkbox">
									<label> <input type="checkbox" name="aggree"
										required="required">Agree the terms and policy
									</label>
								</div>
								<button class="au-btn au-btn--block au-btn--green m-b-20"
									type="submit">register</button>
								<!--	<div class="social-login-content">
									<div class="social-button">
										<button class="au-btn au-btn--block au-btn--blue m-b-20">register
											with facebook</button>
										<button class="au-btn au-btn--block au-btn--blue2">register
											with twitter</button> 
									</div>-->
						</div>
						</form>
						<div class="register-link">
							<p>
								Already have account? <a href="d_login">Sign In</a>
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