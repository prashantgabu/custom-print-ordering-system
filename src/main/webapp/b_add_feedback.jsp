<%@ include file="b_singleheader.jsp"%>
<%@ page import="java.util.Date"%>
<!--breadcrumbs-->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft"
				data-wow-delay=".5s">
				<li><a href="index.html"><span
						class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Single page</li>
			</ol>
		</div>
	</div>
	<%
		String fname = session.getAttribute("buyer_fname").toString();
		String lname = session.getAttribute("buyer_lname").toString();
		String email = session.getAttribute("buyer_email").toString();
		Date date = new Date();
		String date1 = date.toString();
	%>
	<div class="address">
		<!--address-->
		<div class="container">
			<div class="address-row">
				<div class="col-md-6 address-left wow fadeInLeft animated"
					data-wow-delay=".5s">
					<h4 class="wow fadeIndown animated" data-wow-delay=".5s">DROP
						US A LINE</h4>
					<form action="b_add_feedback_code">
						<input class="wow fadeIndown animated" data-wow-delay=".6s"
							type="hidden" placeholder="feed_name" name="feed_name"
							value="<%=fname%> <%=lname%>"> <input
							class="wow fadeIndown animated" name="feed_email"
							data-wow-delay=".7s" type="hidden" placeholder="date"
							value="<%=email%>"> <input
							class="wow fadeIndown animated" data-wow-delay=".7s"
							type="hidden" placeholder="date" name="feed_date"
							value="<%=date1%>">
						<textarea class="wow fadeIndown animated" data-wow-delay=".8s"
							placeholder="Message" name="feed_msg" required=""></textarea>
						<input class="wow fadeIndown animated" data-wow-delay=".9s"
							type="submit" value="SEND">
					</form>
				</div>
			</div>
		</div>
	</div>
<%@ include file="b_footer.jsp"%>