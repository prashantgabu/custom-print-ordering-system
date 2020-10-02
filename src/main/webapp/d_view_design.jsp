<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@ include file="header.jsp"%>

<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- MAIN CONTENT-->
<div class="main-content">
	<div class="section__content section__content--p30">
		<div class="container-fluid">

			<div class="row">
				<div class="col-md-12">
					<!-- DATA TABLE -->
					<h3 class="title-5 m-b-35">All Designs</h3>
					<div class="table-data__tool">
						<div class="table-data__tool-right">
							<a href="d_add_design"><button
									class="au-btn au-btn-icon au-btn--green au-btn--small">
									<i class="zmdi zmdi-plus"></i>add design
								</button></a>
						</div>
					</div>
					<div class="table-responsive table-responsive-data2">
						<table class="table table-data2">
							<thead>
								<tr>
									<th>Design Name</th>
									<th>Category</th>
									<th>Sub-Category</th>
									<th>Photo</th>
									<th>Price Per Piece</th>
									<th>Details</th>
									<th>Options</th>
								</tr>
							</thead>
							<tbody id="myTable">
								<c:forEach items="${list}" var="design">
									<tr>
										<td style="vertical-align: middle;">${design.name}</td>
										<td>${design.subcat.cat.cat_name}</td>
										<td>${design.subcat.subcat_name}</td>
										<td><a
											href="<c:url value="/resources/Admin_Designer/images/${design.photo_1}" />"
											target="_blank"><img style="padding: 5px;"
												src="
											<c:url value="/resources/Admin_Designer/images/${design.photo_1}" />"
												alt="pop" height="150px" width="150px"></a><br><a
											href="<c:url value="/resources/Admin_Designer/images/${design.photo_2}" />"
											target="_blank"><img style="padding: 5px;"
												src="
											<c:url value="/resources/Admin_Designer/images/${design.photo_2}" />"
												alt="pop" height="150px" width="150px"></a><br><a
											href="<c:url value="/resources/Admin_Designer/images/${design.photo_3}" />"
											target="_blank"><img style="padding: 5px;"
												src="
											<c:url value="/resources/Admin_Designer/images/${design.photo_3}" />"
												alt="pop" height="150px" width="150px"></a></td>
										<td>${design.price}</td>
										<td>${design.detail}</td>
										<td>
											<div class="table-data-feature">

												<a href="d_edit_design/${design.design_id}"><button
														class="item" data-toggle="tooltip" data-placement="top"
														title="Edit">
														<i class="zmdi zmdi-edit"></i>
													</button></a> &nbsp;&nbsp;&nbsp; <a
													href="d_delete_design/${design.design_id}"><button
														class="item" data-toggle="tooltip" data-placement="top"
														title="Delete">
														<i class="zmdi zmdi-delete"></i>
													</button></a><a href="d_view_review/${design.design_id}"><button
														class="item" data-toggle="tooltip" data-placement="top"
														title="Edit">
														<i class="zmdi zmdi-edit"></i>
													</button></a>

											</div>
										</td>
									</tr>

								</c:forEach>

								<!-- 		<tr class="tr-shadow">
									<td><label class="au-checkbox"> <input
											type="checkbox"> <span class="au-checkmark"></span>
									</label></td>
									<td>Lori Lynch</td>
									<td><span class="block-email">lori@example.com</span></td>
									<td class="desc">Samsung S8 Black</td>
									<td>2018-09-27 02:12</td>
									<td><span class="status--process">Processed</span></td>
									<td>$679.00</td>
									<td>$679.00</td>
									<td>
										<div class="table-data-feature">
											<button class="item" data-toggle="tooltip"
												data-placement="top" title="Send">
												<i class="zmdi zmdi-mail-send"></i>
											</button>
											<button class="item" data-toggle="tooltip"
												data-placement="top" title="Edit">
												<i class="zmdi zmdi-edit"></i>
											</button>
											<button class="item" data-toggle="tooltip"
												data-placement="top" title="Delete">
												<i class="zmdi zmdi-delete"></i>
											</button>
											<button class="item" data-toggle="tooltip"
												data-placement="top" title="More">
												<i class="zmdi zmdi-more"></i>
											</button>
										</div>
									</td>
								</tr>-->
							</tbody>
						</table>
					</div>
					<!-- END DATA TABLE -->
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="footer.jsp"%>