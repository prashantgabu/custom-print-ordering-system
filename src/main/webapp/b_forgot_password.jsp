<%@ include file="b_loginheader.jsp"%>
<!--login-->
<div class="login-page">
	<div class="title-info wow fadeInUp animated" data-wow-delay=".5s">
		<h3 class="title">
			Forgot<span> Password</span>
		</h3>

	</div>
	<div class="widget-shadow">
		<div class="login-top wow fadeInUp animated" data-wow-delay=".7s">
			<h4>
				Did You Forget Your Password! <br> No Worries!
			</h4>
		</div>
		<div class="login-body wow fadeInUp animated" data-wow-delay=".7s">
			<form action="b_forgot_password_code" method="get">
				<input type="text" class="user" name="email"
					placeholder="Enter your email" required=""> <input
					type="submit" name="Sign In" value="Submit">
			</form>
		</div>
	</div>

</div>
<!--//login-->

<%@ include file="b_loginfooter.jsp"%>