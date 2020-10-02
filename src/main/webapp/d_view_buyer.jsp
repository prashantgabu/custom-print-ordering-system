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
					<div class="row m-t-30">
						<div class="col-md-12">
							<!-- DATA TABLE-->
							<div class="table-responsive m-b-40">
								<table class="table table-borderless table-data3" >
									<thead>
										<tr>
											<th>Name of Buyer</th>
											<th>Email of Buyer</th>
											<th>Profile Photo</th>
											<th>Address</th>
											<th>Contact</th>
											<th>Date Of Birth</th>
											<th>Gender</th>
											<th>City</th>
											<th>Options</th>
										</tr>
									</thead>
									<tbody id="myTable">
										<c:forEach items="${list}" var="pdes">
											<tr>
												<td>${pdes.fname}${pdes.lname}</td>
												<td>${pdes.email}</td>
												<td>${pdes.propic}</td>
												<td>${pdes.address}</td>
												<td>${pdes.state}</td>
												<td>${pdes.dob}</td>
												<td>${pdes.gender}</td>
												<td>${pdes.city}</td>
												<td><a href="mailto:${pdes.email}?Subject=Enquiry"
													target="_top"><input class="btn btn-outline-success"
														type="button" value="Send Email"></a></td>
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
