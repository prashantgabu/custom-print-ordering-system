<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="b_header.jsp"%>
<div class="address">
	<!--address-->
	<div class="container">
		<c:forEach items="${list1}" var="bpro">
			<form action="../updateBuyerProfile" method="post">
				<input type="hidden" name="buyer_id" value="${bpro.buyer_id}">
				<div class="address-row">
					<div class="col-md-6 address-left wow fadeInLeft animated"
						data-wow-delay=".5s">
						<h4 class="wow fadeIndown animated" data-wow-delay=".5s">DROP
							US A LINE</h4>

						<input class="wow fadeIndown animated" data-wow-delay=".6s"
							name="password" type="hidden" placeholder="Enter Your First Name"
							required="" value="${bpro.password}"><input
							class="wow fadeIndown animated" data-wow-delay=".6s" name="email"
							type="hidden" placeholder="Enter Your First Name" required=""
							value="${bpro.email}"> <input
							class="wow fadeIndown animated" data-wow-delay=".6s" name="fname"
							type="text" placeholder="Enter Your First Name" required=""
							value="${bpro.fname}"> <input value="${bpro.lname}"
							class="wow fadeIndown animated" data-wow-delay=".6s" type="text"
							placeholder="Enter Your Last Name" name="lname" required="">
						<input class="wow fadeIndown animated" data-wow-delay=".7s"
							value="${bpro.city}" type="text" placeholder="Enter Your City"
							name="city" required=""> <input
							class="wow fadeIndown animated" data-wow-delay=".8s" type="date"
							placeholder="dob" name="dob" required="" max="2019-10-15" value="${bpro.dob}">
						<c:if test="${bpro.gender=='male'}">


							<input type="radio" value="male" name="gender" checked="checked">Male 
						<input type="radio" value="female" name="gender">Female
							</c:if>
						<c:if test="${bpro.gender=='female'}">


							<input type="radio" value="male" name="gender">Male 
						<input type="radio" value="female" checked="checked" name="gender">Female
							</c:if>
						<textarea class="wow fadeIndown animated" data-wow-delay=".8s"
							placeholder="Address" name="address" required="">${bpro.address}</textarea>
						<input class="wow fadeIndown animated" data-wow-delay=".9s"
							type="submit" value="Update profile">
					</div>
					<div class="col-md-6 address-right">
						<div class=" wow fadeInRight animated" data-wow-delay=".5s">
							<h4>Profile Photo</h4>
							<img alt=""
								src="<c:url value="/resources/Buyer/images/${bpro.propic}"/>"
								height="150px" width="150px" style="border-radius: 50%; border: solid;" /><br> <input
								class="wow fadeIndown animated" data-wow-delay=".6s" type="file"
								placeholder="propic" name="propic" required=""><br>
						</div>
						<div class="address-mdl wow fadeInRight animated"
							data-wow-delay=".7s">
							<h4>PHONE</h4>
							<input class="wow fadeIndown animated" data-wow-delay=".6s"
								name="contact" type="number" placeholder="contact" required="">
						</div>

					</div>
				</div>
			</form>
		</c:forEach>

	</div>
</div>
<%@ include file="b_footer.jsp"%>