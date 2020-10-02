<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="b_header.jsp"%>
<div class="address">
	<!--address-->
	<div class="container">
		<form action="../b_add_review_code" method="post">
		<input type="hidden" name="design_id" value="${design_id}">
			<div class="address-row">
				<div class="col-md-6 address-left wow fadeInLeft animated"
					data-wow-delay=".5s">
					<h4 class="wow fadeIndown animated" data-wow-delay=".5s">Review
						Design</h4>

					<input class="wow fadeIndown animated" data-wow-delay=".6s"
						name="password" type="hidden" placeholder="Enter Your First Name"
						required="">
					<textarea class="wow fadeIndown animated" data-wow-delay=".8s"
						placeholder="Enter Your Review Here" name="review_msg" required=""></textarea>
					<div class="single-rating">
						<span class="starRating"> <input id="rating5" type="radio"
							name="rating" value="5" checked> <label for="rating5">5</label>
							<input id="rating4" type="radio" name="rating" value="4">
							<label for="rating4">4</label> <input id="rating3" type="radio"
							name="rating" value="3"> <label for="rating3">3</label> <input
							id="rating2" type="radio" name="rating" value="2"> <label
							for="rating2">2</label> <input id="rating1" type="radio"
							name="rating" value="1"> <label for="rating1">1</label>
						</span>
					</div>
					<input class="wow fadeIndown animated" data-wow-delay=".9s"
						type="submit" value="Submit">
				</div>

			</div>
		</form>

	</div>
</div>
<%@ include file="b_footer.jsp"%>