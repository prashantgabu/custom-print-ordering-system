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
					<div class="col-lg-8">
						<!-- TOP CAMPAIGN-->
						<div class="top-campaign">
							<h3 class="title-3 m-b-30">Discounts</h3>
							<div class="table-responsive">
								<table class="table table-top-campaign" >
									<thead>
										<tr>
											<th>Design Name</th>
											<th>Design Photo</th>
											<th>Discount</th>
											<th style="text-align: right;">Actions</th>
										</tr>
									</thead>
									<tbody id="myTable">
										<c:forEach items="${list}" var="discount">
											<tr>
												<td>${discount.design.name}</td>
												<td><img
											src="
											<c:url value="/resources/Admin_Designer/images/${discount.design.photo_1}" />"
											alt="pop" height="250px" width="250px"></td>
												<td>${discount.dis_amt}</td>
												<td>
													<div class="table-data-feature">

														<button class="item" data-toggle="tooltip"
															data-placement="top" title="Edit">
															<a href="d_edit_discount/${discount.dis_id}"><i class="zmdi zmdi-edit"></i></a>
														</button>
														<button class="item" data-toggle="tooltip"
															data-placement="top" title="Delete">
															<a href="d_delete_discount/${discount.dis_id}"><i
																class="zmdi zmdi-delete"></i></a>
														</button>

													</div>
												</td>

											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						<!--  END TOP CAMPAIGN-->
					</div>

					<!-- END DATA TABLE -->
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="footer.jsp"%>