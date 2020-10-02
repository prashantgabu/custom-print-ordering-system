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
					<div class="col-lg-8">
						<div class="table-data__tool">
							<div class="table-data__tool-right">
								<a href="A_add_subcat"><button
										class="au-btn au-btn-icon au-btn--green au-btn--small">
										<i class="zmdi zmdi-plus"></i>add Sub-Category
									</button></a>
							</div>
						</div>
						<!-- TOP CAMPAIGN-->
						<div class="top-campaign">
							<h3 class="title-3 m-b-30">Sub Categories</h3>
							<div class="table-responsive">
								<table class="table table-top-campaign">
									<thead>
										<tr>
											<th style="text-align: left;">Subcategory</th>
											<th>Category</th>
											<th style="text-align: right;">Options</th>
										</tr>
									</thead>
									<tbody id="myTable">
										<c:forEach items="${list}" var="subcat1">
											<tr>
												<td>${subcat1.subcat_name}</td>
												<td>${subcat1.cat.cat_name}</td>
												<td><a href="${pageContext.request.contextPath}/A_edit_subcat/${subcat1.subcat_id}"><input
														class="btn btn-primary" type="button" value="Edit"></a><a
													href="${pageContext.request.contextPath}/A_delete_subcat/${subcat1.subcat_id}"> &nbsp;&nbsp; <input
														class="btn btn-primary" type="button" value="Delete"></a></td>

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