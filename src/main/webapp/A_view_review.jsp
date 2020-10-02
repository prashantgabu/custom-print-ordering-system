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
											<th>Contact No.</th>
											<th>Review Date</th>
											<th>Review</th>
											<th>Rating</th>
											<th>Options</th>
										</tr>
									</thead>
									<tbody id="myTable">
										<c:forEach items="${list}" var="buy">
											<tr>
												<td>${buy.buyer.email}</td>
												<td>${buy.buyer.fname}${buy.buyer.lname}</td>
												<td>${buy.buyer.state}</td>
												<td>${buy.r_date}</td>
												<td>${buy.review_msg}</td>
												<td>${buy.rating}</td>
												<td><a href="${pageContext.request.contextPath}/A_reply"><button type="submit"
															class="btn btn-primary btn-sm">
															<i class="fa fa-dot-circle-o"></i> Report
														</button></a>&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/A_delete_review/${buy.r_id}"><button
															type="submit" class="btn btn-primary btn-sm">
															<i class="fa fa-dot-circle-o"></i> Delete
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
