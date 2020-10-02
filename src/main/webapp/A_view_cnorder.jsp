<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="A_header2.jsp"%>
<!-- MAIN CONTENT-->
<div class="main-content">
	<div class="section__content section__content--p30">
		<div class="container-fluid">

			<div class="row">
				<div class="col-md-12">
					<!-- DATA TABLE -->
					<div class="row m-t-30">
						<div class="col-md-12">
							<!-- DATA TABLE-->
							<div class="table-responsive m-b-40">
								<table class="table table-borderless table-data3">
									<thead>
										<tr>
											<th>Email of User</th>
											<th>Name of User</th>
											<th>Design Photo</th>
											<th>Design</th>
											<th>Quantity</th>
											<th>Price</th>
											<th>Contact Number Of User</th>
											<th>Delivery Status</th>
											<th>Options</th>
										</tr>
									</thead>
									<tbody id="myTable">
										<c:forEach items="${list2}" var="cn">
											<tr>
												<td>${cn.buyer.email}</td>
												<td>${cn.buyer.fname} ${cn.buyer.lname}</td>
												<td>${cn.design.photo_1}</td>
												<td>${cn.design.name}</td>
												<td>${cn.qty}</td>
												<td>${cn.discount}</td>
												<td>${cn.buyer.state}</td>
												<td>${cn.delivery_status}</td>
												<td><a href="${pageContext.request.contextPath}/A_edit_cnstatus/${cn.cnorder_id}"><button type="submit"
															class="btn btn-primary btn-sm">
															<i class="fa fa-dot-circle-o"></i> Update Progress
														</button></a></td>
											</tr>
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
