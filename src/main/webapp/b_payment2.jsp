
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="b_header.jsp"%>
<!--breadcrumbs-->
<div class="breadcrumbs">
	<div class="container">
		<ol class="breadcrumb breadcrumb1 animated wow fadeInUp"
			data-wow-delay=".5s">
			<li><a href="index.html"><span
					class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
			<li class="active">Sign In</li>
		</ol>
	</div>
</div>
<!--//breadcrumbs-->
<!--login-->
<div class="login-page">
	<div class="title-info wow fadeInUp animated" data-wow-delay=".5s">
		<h3 class="title">
			SignIn<span> Form</span>
		</h3>
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit
			curabitur</p>
	</div>
	<div class="widget-shadow">
		<div class="login-top wow fadeInUp animated" data-wow-delay=".7s">
			<h4>
				Welcome back to Modern Shoppe ! <br> Not a Member? <a
					href="register.html"> Register Now »</a>
			</h4>
		</div>
		<div class="login-body wow fadeInUp animated" data-wow-delay=".7s">
			<form action="b_add_payment" method="get">
				16-DIgit Number:<input type="text" class="user" name="number"
					placeholder="Enter your 16-digit card number" /> 
					Name On Card:-<input
					type="text" name="nameoncard" class="lock" placeholder="Enter Name" />
					Expiry Month<input type="text" name="exp_month">
					Expiry Year<input type="text" name="exp_year">
					Total Rupees To Pay:<input type="text" name="totalcart" value="${sessionScope.totalbill}">
				<input type="submit" name="Sign In" value="Payment">
				<div class="forgot-grid">
					<label class="checkbox"><input type="checkbox"
						name="checkbox"><i></i>Remember me</label>
					<div class="forgot">
						<a href="#">Forgot Password?</a>
					</div>
					<div class="clearfix"></div>
				</div>
			</form>
		</div>
	</div>
	<div class="login-page-bottom">
		<h5>- OR -</h5>
		<div class="social-btn">
			<a href="#"><i>Sign In with Facebook</i></a>
		</div>
		<div class="social-btn sb-two">
			<a href="#"><i>Sign In with Twitter</i></a>
		</div>
	</div>
</div>
<!--//login-->

<%@ include file="b_footer.jsp"%>