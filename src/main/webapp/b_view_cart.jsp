<%@ include file="b_singleheader.jsp"%>
<!--breadcrumbs-->
<div class="breadcrumbs">
	<div class="container">
		<ol class="breadcrumb breadcrumb1 animated wow slideInLeft"
			data-wow-delay=".5s">
			<li><a href="index.html"><span
					class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
			<li class="active">Check Out page</li>
		</ol>
	</div>
</div>
<!--//breadcrumbs-->
<!--cart-items-->
<div class="cart-items">
	<div class="container">
		<c:set value="0" var="isFound" scope="session" />
		<h3 class="wow fadeInUp animated" data-wow-delay=".5s">My
			Shopping Cart</h3>
		<c:set value="0" var="totalbill" scope="session" />


		<div class="bs-docs-example wow fadeInDown animated"
			data-wow-delay=".5s">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>Design Photo</th>
						<th>Design Name</th>
						<th>Company's Name</th>
						<th>Company's Message</th>
						<th>Company's Address</th>
						<th>Company's Email-ID</th>
						<th>Email On Design</th>
						<th>Name On Design</th>
						<th>Price Per Piece After Discount</th>
						<th>Logo On Design</th>
						<th>Quantity</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="vcart">
						<c:set value="1" var="isFound" scope="session" />
						<c:if test="${isFound==1}">
							<tr>
								<td><img
									src="<c:url value="/resources/Buyer/images/${vcart.design.photo_1}"/>"
									class="img-responsive" alt="uyfy" width="100px" height="100px"></td>
								<td>${vcart.design.name}</td>
								<td>${vcart.companyname}</td>
								<td>${vcart.other_detail}</td>
								<td>${vcart.address}</td>
								<td>${vcart.contact}</td>
								<td>${vcart.email}</td>
								<td>${vcart.name}</td>
								<td>${vcart.discount}</td>
								<td><img
									src="<c:url value="/resources/Buyer/images/${vcart.picture_1}"/>"
									class="img-responsive" alt="Error" width="100px" height="100px">
									<img
									src="<c:url value="/resources/Buyer/images/${vcart.picture_2}"/>"
									class="img-responsive" alt="Error" width="100px" height="100px"></td>
								<td>${vcart.qty}</td>
								<td><a href="b_delete_cart/${vcart.design.design_id}"><span
										class="label label-danger">Delete</span></a></td>
							</tr>
						</c:if>
					</c:forEach>
					<c:if test="${isFound==0}">
						<h3>
							Look's Like You Have An Empty Cart! <a href="b_index">Continue
								Shopping</a>
						</h3>
					</c:if>
				</tbody>
			</table>
			<c:if test="${isFound==1}">
				<c:forEach items="${list}" var="vcart">
					<c:set value="${totalbill+ (vcart.qty*vcart.discount)}"
						var="totalbill" scope="session" />
				</c:forEach>
				<div class="delivery">
					<h4>
						<c:out value="${totalbill}"></c:out>
					</h4>
				</div>

				<a href="b_payment"><span>Proceed To Payment</span></a>
			</c:if>
			<div class="clearfix"></div>
		</div>
	</div>

</div>
<!--//cart-items-->

<%@ include file="b_footer.jsp"%>