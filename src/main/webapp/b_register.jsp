<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="b_loginheader.jsp"%>

<div class="login-page">
	<div class="title-info wow fadeInUp animated" data-wow-delay=".5s">
		<h3 class="title">
			Register<span> Here</span>
		</h3>
		<p>Explore The Best!</p>
	</div>
	<div class="widget-shadow">
		<div class="login-top wow fadeInUp animated" data-wow-delay=".7s">
			<h4>
				Already have an Account ?<a href="b_login"> Sign In »</a>
			</h4>
		</div>
		<div class="login-body">
			<form class="wow fadeInUp animated" data-wow-delay=".7s"
				action="b_register_code"">
				<input type="text" placeholder="First Name" name="fname"
					pattern="[a-zA-Z ]*$" required> <input type="text"
					placeholder="Last Name" name="lname" pattern="[a-zA-Z ]*$" required>
				<input type="text" class="email" placeholder="Email Address"
					name="email" pattern="[^@]+@[^@]+\.[a-zA-Z]{2,6}"
					required="required"> <input type="hidden" name="password"
					class="lock" placeholder="Password"> <input type="date"
					class="email" max="2019-10-15" name="dob"
					placeholder="Date Of Birth"><br> <br> <input
					type="radio" name="gender" class="email" placeholder="gender">Male
				<input type="radio" name="gender" class="email" placeholder="gender">Female
				<br>
				<textarea rows="5" cols="60" class="email" name="address" placeholder="Enter Delivery Address" required="required"></textarea>
				<br> <input type="submit" name="Register" value="Register">
			</form>
		</div>
	</div>
</div>
<!--//login-->

<%@ include file="b_loginfooter.jsp"%>