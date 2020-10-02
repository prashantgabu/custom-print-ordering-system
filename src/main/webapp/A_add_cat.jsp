<%@ include file="A_header.jsp"%>

<form action="example.php" method="post" enctype="multipart/form-data">
	<input type="file" id="file-upload" name="uploaded"> <br>
	<input type="submit" onclick="return VerifyUploadSizeIsOK()"
		value="Button to click">
</form>

<!-- MAIN CONTENT-->
<div class="main-content">
	<div class="section__content section__content--p30">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-8">
					<div class="card">
						<form action="A_add_cat_code" method="post"
							class="form-horizontal" onsubmit="return Validate(this);" id="f"
							enctype="multipart/form-data">
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
										<input type="text" name="catname"
											placeholder="Enter Category name" class="form-control"
											pattern="[a-zA-Z ]*$" required>
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
										<input type="file" name="catphoto"
											placeholder="Select Category Photo" class="form-control"
											required="required" onchange="ValidateSize(this)">
										<p id="size"></p>
									</div>
								</div>

							</div>
							<div class="card-footer">
								<button type="submit" class="btn btn-primary btn-sm" id="dis"
									onclick="myFunctionpopup(); ">
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
