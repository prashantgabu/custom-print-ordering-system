<%@ include file="A_header.jsp"%>
<!-- MAIN CONTENT-->
<div class="main-content">
	<div class="section__content section__content--p30">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-8">

					<div class="card">
						<c:forEach items="${list1}" var="category">
							<form action="../updateCat" method="post" class="form-horizontal">
								<input type="hidden" name="designer_id" value="${category.designer_id}">
								<div class="card-header">
									<strong>Edit</strong>Membership
								</div>
								<div class="card-body card-block" style="height: 200px;">

									<div class="row form-group"
										style="height: 60px; margin-top: 50px;">
										<div class="col col-md-3">
											<label for="hf-email" class=" form-control-label">Membership
												Plan:-</label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="hf-email" name="catname"
												placeholder="Enter Category name"
												value="${category.sub_status}" class="form-control"
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
