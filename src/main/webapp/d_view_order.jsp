<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="header.jsp"%>
<!-- MAIN CONTENT-->
<div class="main-content">
	<div class="section__content section__content--p30">
		<div class="container-fluid">

			<div class="row">
				<div class="col-md-12">
					<!-- DATA TABLE -->
					<h3 class="title-5 m-b-35">Confirm Orders</h3>
					<div class="table-data__tool">

						<div class="row m-t-30">
							<div class="col-md-12">
								<!-- DATA TABLE-->
								<div class="table-responsive m-b-40">
									<table class="table table-borderless table-data3">
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
										<tbody id="myTable">
											<c:forEach items="${list}" var="vcart">
												<c:if
													test="${vcart.design.designer.designer_id==designer_id}">
													<tr>
														<td><img
															src="<c:url value="/resources/Admin_Designer/images/${vcart.design.photo_1}"/>"
															class="img-responsive" alt="uyfy" width="100px"
															height="100px"></td>
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
															class="img-responsive" alt="Error" width="100px"
															height="100px"> <img
															src="<c:url value="/resources/Buyer/images/${vcart.picture_2}"/>"
															class="img-responsive" alt="Error" width="100px"
															height="100px"></td>
														<td>${vcart.qty}</td>
														<td><a href="d_msg/${vcart.buyer.buyer_id}"> <input
																type="button" class="btn btn-outline-info"
																value="Contact">
														</a><a href="d_view_buyer/${vcart.buyer.buyer_id}"> <input
																type="button" class="btn btn-outline-info"
																value="View Profile">
														</a></td>
													</tr>
												</c:if>
											</c:forEach>


										</tbody>
									</table>
								</div>
								<!-- END DATA TABLE-->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="footer.jsp"%>