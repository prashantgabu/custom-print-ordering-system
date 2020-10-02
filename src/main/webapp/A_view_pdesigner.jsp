<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="A_header2.jsp"%>

<STYLE TYPE="text/css">
<!--
TH{font-family: Arial; font-size: 10pt;}
--->
</STYLE>
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
								<table class="table table-borderless table-data3" style="font-family: cursive;">
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
												<td>${pdes.propic}</td>
												<td>${pdes.address}</td>
												<td>${pdes.contact}</td>
												<td>${pdes.storename}</td>
												<td>${pdes.gstno}</td>
												<td>${pdes.city}</td>
												<td><a href="${pageContext.request.contextPath}/A_edit_pdesigner/${pdes.designer_id}"><button type="submit"
															class="btn btn-primary btn-sm">
															<i class="fa fa-dot-circle-o"></i> Verify
														</button></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/A_view_pdesigner/${pdes.designer_id}"
													onclick="return confirm('Are you sure you want to delete this item?');"><button
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
