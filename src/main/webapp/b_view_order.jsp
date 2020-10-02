<%@ include file="b_singleheader.jsp"%>
	<!--breadcrumbs-->
	<!--Short codes-->
	<div class="codes">
		<div class="container">

			<div class="page-header wow fadeInDown animated" data-wow-delay=".5s">
				<h3 class="hdg">Tables</h3>
			</div>
			<div class="bs-docs-example wow fadeInDown animated"
				data-wow-delay=".5s">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Date of Order</th>
							<th>Design Name</th>
							<th>Design Photo</th>
							<th>Quantity</th>
							<th>Price</th>
							<th>Delivery Status</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="ord">
							<tr>
								<td>${ord.date}</td>
								<td>${ord.design.name}</td>
								<td><img
									src="<c:url value="/resources/Buyer/images/${ord.design.photo_1}"/>"
									class="img-responsive" alt="Error" width="100px" height="100px"></td>
								<td>${ord.qty}</td>
								<td>${ord.discount}</td>
								<td>${ord.delivery_status}</td>
								<td><a href="b_msg/${ord.design.designer.designer_id}" class="btn btn-danger">COntact</a>
								<c:if test="${ord.delivery_status=='Out For Delivery'}">
										<a href="b_add_review/${ord.design.design_id}" class="btn btn-danger">Review</a></c:if>
									<a href="b_invoice/${ord.cnorder_id}" class="btn btn-danger">Invoice</a>
									
									</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!--//short-codes-->
<%@ include file="b_footer.jsp"%>