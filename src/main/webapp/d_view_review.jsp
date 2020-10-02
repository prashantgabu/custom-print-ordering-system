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
					<h3 class="title-5 m-b-35">Reviews</h3>

					<div class="row m-t-30">
						<div class="col-md-12">
							<!-- DATA TABLE-->
							<div class="table-responsive m-b-40">
								<table class="table table-borderless table-data3" >
									<thead>
										<tr>
											<th>Name</th>
											<th>Email</th>
											<th>Design</th>
											<th>Photo</th>
											<th>Review Date</th>
											<th>Review</th>
											<th>Rating</th>
										</tr>
									</thead>
									<tbody id="myTable">
										<c:forEach items="${list}" var="rev">
											<tr>
												<td>${rev.buyer.fname}</td>
												<td>${rev.buyer.email}</td>
												<td>${rev.design.name}</td>
												<td>${rev.design.photo_1}</td>
												<td>${rev.r_date}</td>
												<td>${rev.review_msg}</td>
												<td>${rev.rating}</td>
											</tr>

										</c:forEach>

										<!-- <tr>
											<td>2018-09-29 05:57</td>
											<td>Mobile</td>
											<td>iPhone X 64Gb Grey</td>
											<td class="process">Processed</td>
											<td>$999.00</td>
											<td>$999.00</td>
										</tr> -->
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
