<%@ include file="b_loginheader.jsp"%>

<!--login-->
<div id="timer"></div>
<script type="text/javascript">
	var timeoutHandle;

	function countdown(minutes, seconds) {
		var seconds = 60;
		var mins = minutes

		function tick() {
			var counter = document.getElementById("timer");
			var current_minutes = mins - 1
			seconds--;
			counter.innerHTML = current_minutes.toString() + ":"
					+ (seconds < 10 ? "0" : "") + String(seconds);
			if (seconds > 0) {
				timeoutHandle = setTimeout(tick, 1000);
			} else {

				if (mins > 1) {

					// countdown(mins-1);   never reach “00″ issue solved:Contributed by Victor Streithorst
					setTimeout(function() {
						countdown(mins - 1);
					}, 1000);

				}
			}
		}
		tick();
	}
</script>

<div class="login-page">
	<div class="title-info wow fadeInUp animated" data-wow-delay=".5s">
		<h3 class="title">
			Sign<span> In</span>
		</h3>
		<h4 class="title">
			<br><a href="${pageContext.request.contextPath}/d_login">Are You A Designer?<span> Login Here</span></a>
		</h4>

	</div>
	<div class="widget-shadow">
		<div class="login-top wow fadeInUp animated" data-wow-delay=".7s">
			<h4>
				Welcome back to Printsalive! <br> Not a Member? <a
					href="b_register"> Register Now!!</a>
			</h4>
		</div>


		<div class="login-body wow fadeInUp animated" data-wow-delay=".7s">
			<form action="b_login_code" method="get">
				<%
					boolean flag = false;
					Cookie c[] = request.getCookies();
					for (int a = 0; a < c.length; a++) {
						if (c[a].getName().equals("count")) {
							if (c[a].getValue().equals("3"))
								flag = true;
							out.println("Attempt=" + c[a].getValue());
							break;
						}
					}
				%>


				<input type="text" class="user" name="email"
					placeholder="Enter your email" required pattern="[^@]+@[^@]+\.[a-zA-Z]{2,6}" > <input
					type="password" name="password" class="lock" placeholder="Password">
				<%
					if (flag == true) {
				%>
				<a href="javascript:countdown(1)" id="timer">Submit</a>
				<%
					} else {
				%>
				<input type="submit" value="Login to your account" id="Button">
				<%
					}
				%>
				<div class="forgot-grid">

					<div class="forgot">
						<a href="b_forgot_password">Forgot Password?</a>
					</div>
				</div>

			</form>
		</div>
	</div>

</div>
<script>
	function onSignIn(googleUser) {
		// window.location.href='success.jsp';
		var profile = googleUser.getBasicProfile();
		var imagurl = profile.getImageUrl();
		var name = profile.getName();
		var email = profile.getEmail();
		document.getElementById("myImg").src = imagurl;
		document.getElementById("name").innerHTML = name;
		document.getElementById("myP").style.visibility = "hidden";
		document.getElementById("status").innerHTML = 'Welcome ' + name
				+ '!<a href=<c:url value="/success.jsp"/>?email=' + email
				+ '&name=' + name + '/>Continue with Google login</a></p>'
	}
</script>
<!--//login-->
<%@ include file="b_loginfooter.jsp"%>