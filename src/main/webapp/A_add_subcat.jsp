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
						<form action="A_add_subcat_code" method="post"
							class="form-horizontal">

							<div class="card-header">
								<strong>Add</strong> Sub Category
							</div>
							<div class="card-body card-block">
								<div class="row form-group">
									<div class="col col-md-3">
										<label for="hf-email" class=" form-control-label">Select
											Category Name:-</label>
									</div>
									<div class="col-12 col-md-9">
										<select name="catname" class="form-control" required="required">
											<c:forEach items="${list}" var="category">
												<option value="${category.cat_id}">${category.cat_name}</option>
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
											placeholder="Enter Sub Category name" class="form-control" required="required">
									</div>
								</div>
							</div>


							<div class="card-footer">
								<button type="submit" class="btn btn-primary btn-sm">
									<i class="fa fa-dot-circle-o"></i> Submit
								</button>
							</div>
						</form>
					</div>
					
				</div>
			</div>
		</div>
	</div>

</div>
<%@ include file="footer.jsp"%>
