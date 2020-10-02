<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="A_header.jsp"%>
<!-- MAIN CONTENT-->
<div class="main-content">
	<div class="section__content section__content--p30">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-8">

					<div class="card">
						<c:forEach var="subcat1" items="${list1}">
							<form action="../updateSubcat" method="post"
								class="form-horizontal">

								<input type="hidden" name="subcat_id"
									value="${subcat1.subcat_id}">

								<div class="card-header">
									<strong>Edit</strong> Sub Category
								</div>
								<div class="card-body card-block">
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="hf-email" class=" form-control-label">Select
												Category Name:-</label>
										</div>
										<div class="col-12 col-md-9">
											<select name="catname" class="form-control"
												required="required">
												<c:forEach items="${list}" var="category1">


													<c:choose>
														<c:when test="${category1.cat_id==subcat1.cat.cat_id}">
															<option value="${category1.cat_id}" selected>${category1.cat_name}</option>
														</c:when>
														<c:otherwise>
															<option value="${category1.cat_id}">${category1.cat_name}</option>
														</c:otherwise>
													</c:choose>


												</c:forEach>

											</select>
										</div>
									</div>
								</div>
								<div class="card-body card-block">
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="hf-email" class=" form-control-label">Sub
												Category Name:-</label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="hf-email" name="subcatname"
												placeholder="Enter Sub Category name"
												value="${subcat1.subcat_name}" class="form-control"
												required="required">
										</div>
									</div>
								</div>


								<div class="card-footer">
									<button type="submit" class="btn btn-primary btn-sm">
										<i class="fa fa-dot-circle-o"></i> Submit
									</button>
								</div>
							</form>
						</c:forEach>
					</div>

				</div>
			</div>
		</div>
	</div>

</div>
<%@ include file="footer.jsp"%>
