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
											<th>Email of Users</th>
											<th>Name of Users</th>
											<th>Date Of Feedback</th>
											<th>Feedback</th>
											<th>Options</th>
										</tr>
									</thead>
									<tbody id="myTable">
										<c:forEach items="${list}" var="feed">
											<tr>
												<td>${feed.email}</td>
												<td>${feed.name}</td>
												<td>${feed.f_date}</td>
												<td>${feed.msg}</td>
												<td><a
													href="mailto:${feed.email}?&amp;subject=Reply%20To%20your%20Feedback%20:-%20${feed.msg}">
														<button type="submit" class="btn btn-primary btn-sm">
															<i class="fa fa-dot-circle-o"></i> Reply
														</button>
												</a>&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/A_delete_feedback/${feed.f_id}"><button
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
