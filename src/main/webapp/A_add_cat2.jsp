<%@ include file="A_header.jsp"%>
<!-- MAIN CONTENT-->
<div class="main-content">
	<div class="section__content section__content--p30">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-8">

					<div class="card">
						<form action="A_add_cat_code" method="post"
							class="form-horizontal">
							<div class="card-header">
								<strong>Add</strong> Category
							</div>
							<div class="card-body card-block" style="height: 200px;">

								<div class="row form-group"
									style="height: 60px; margin-top: 50px;">
									<div class="col col-md-3">
										<label for="hf-email" class=" form-control-label">Category
											Name:-</label>
									</div>
									<div class="col-12 col-md-9">
										<input type="text" id="hf-email" name="catname"
											placeholder="Enter Category name" class="form-control"
											required="required">
									</div>
								</div>

							</div>
							<div class="card-body card-block" style="height: 200px;">

								<div class="row form-group"
									style="height: 60px; margin-top: 50px;">
									<div class="col col-md-3">
										<label for="hf-email" class=" form-control-label">Category
											Photo:-</label>
									</div>
									<div class="col-12 col-md-9">
										<input type="file" id="hf-email" name="catphoto"
											placeholder="Select Category Photo" class="form-control"
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
					</div>

				</div>
			</div>
		</div>
	</div>

</div>
<%@ include file="footer.jsp"%>
