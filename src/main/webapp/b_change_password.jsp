<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="b_header.jsp"%>

<script>
	function validatePassword() {
		var pass2 = document.getElementById("password2").value;
		var pass1 = document.getElementById("password1").value;
		
		if (pass1 != pass2)
			document.getElementById("password2").setCustomValidity(
					"Passwords Don't Match");
		else
			document.getElementById("password2").setCustomValidity('');
		//empty string means no validation error
	}
</script>

<!--login-->
<div class="login-page">
	<div class="title-info wow fadeInUp animated" data-wow-delay=".5s">
		<h3 class="title">
			Sign<span> In</span>
		</h3>

	</div>
	<div class="widget-shadow">
		<div class="login-top wow fadeInUp animated" data-wow-delay=".7s">
			<h4>
				Change Password Your Here! <br>
			</h4>
		</div>
		<div class="login-body wow fadeInUp animated" data-wow-delay=".7s">
			<form action="b_change_password_code" method="get">
				<input type="password" id="oldpwd" class="user" name="oldpwd"
					placeholder="Enter your current" required=""> 
					
					<input
					type="password" name="newpwd" id="password1" class="lock"
					placeholder="Password"> 
					
					<input type="password"
					id="password2" name="repwd" class="lock" placeholder="Password">
				<button class="btn-success btn" onClick="validatePassword();">Submit</button>
				<div class="forgot-grid">

					<div class="forgot">
						<a href="b_forgot_password">Forgot Password?</a>
					</div>
					<div class="clearfix"></div>
				</div>
			</form>
		</div>
	</div>

</div>
<!--//login-->

<%@ include file="b_footer.jsp"%>