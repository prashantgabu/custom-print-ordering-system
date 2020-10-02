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
											<th>Email of Designer</th>
											<th>Name of Designer</th>
											<th>Profile Photo</th>
											<th>Address</th>
											<th>Contact</th>
											<th>Store Name</th>
											<th>GST No.</th>
											<th>City</th>
											<th>Options</th>
										</tr>
									</thead>
									<tbody id="myTable">
										<c:forEach items="${list}" var="pdes">
											<tr>
												<td>${pdes.email}</td>
												<td>${pdes.name}</td>
												<td><img
													src=<c:url value="/resources/Admin_Designer/images/${pdes.propic}"/>
													height="100px" width="100px" /></td>
												<td>${pdes.address}</td>
												<td>${pdes.contact}</td>
												<td>${pdes.storename}</td>
												<td>${pdes.gstno}</td>
												<td>${pdes.city}</td>
												<td><a href="${pageContext.request.contextPath}/A_edit_vdesigner/${pdes.designer_id}"><button
															type="submit" class="btn btn-primary btn-sm">
															<i class="fa fa-dot-circle-o"></i> Convert To PLUS
														</button></a><hr><a href="${pageContext.request.contextPath}/A_edit_ndesigner/${pdes.designer_id}"><button
															type="submit" class="btn btn-primary btn-sm">
															<i class="fa fa-dot-circle-o"></i> Convert To None
														</button></a><hr><a href="${pageContext.request.contextPath}/A_view_design/${pdes.designer_id}"><button
															type="submit" class="btn btn-primary btn-sm">
															<i class="fa fa-dot-circle-o"></i> Designs
														</button></a><hr><a href="${pageContext.request.contextPath}/A_view_cnorder/${pdes.designer_id}"><button
															type="submit" class="btn btn-primary btn-sm">
															<i class="fa fa-dot-circle-o"></i> View All Orders
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
