<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@ include file="A_header2.jsp"%>

<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- MAIN CONTENT-->
<div class="main-content">
	<div class="section__content section__content--p30">
		<div class="container-fluid">

			<div class="row">
				<div class="col-md-12">
					<!-- DATA TABLE -->
					<h3 class="title-5 m-b-35">Designs</h3>
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
										<td>${design.name}</td>
										<td>${design.subcat.cat.cat_name}</td>
										<td>${design.subcat.subcat_name}</td>
										<td><img
											src="
											<c:url value="/resources/Admin_Designer/images/${design.photo_1}" />"
											alt="pop" height="100px" width="100px">&nbsp;&nbsp;<img
											src="
											<c:url value="/resources/Admin_Designer/images/${design.photo_2}" />"
											alt="pop" height="100px" width="100px">&nbsp;&nbsp;<img
											src="
											<c:url value="/resources/Admin_Designer/images/${design.photo_3}" />"
											alt="pop" height="100px" width="100px"></td>
										<td>${design.price}</td>
										<td>${design.detail}</td>
										<td><a href="${pageContext.request.contextPath}/A_view_review/${design.design_id}"><button
													type="submit" class="btn btn-primary btn-sm">
													<i class="fa fa-dot-circle-o"></i> View All reviews
												</button></a></td>

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