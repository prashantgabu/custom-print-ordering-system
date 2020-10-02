<%@ include file="header.jsp"%>
<!-- MAIN CONTENT-->
<div class="main-content">
	<div class="section__content section__content--p30">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-10" style="width: 600px;">
					<div class="card">
						<div class="card-header">
							<strong>Add</strong> Design
						</div>

						<div class="card-body card-block" style="width: 600px;">
							<form action="d_add_design_code" method="post"
								class="form-horizontal" style="width: 600px;">
								<div class="row form-group">
									<div class="col col-md-3">
										<label for="hf-email" class=" form-control-label">Design
											Name</label>
									</div>
									<div class="col-12 col-md-9">
										<input type="text" id="hf-email" name="designname"
											placeholder="Enter Deisgn name" class="form-control">
									</div>
								</div>

								<div class="row form-group ">
									<div class="col col-md-3">
										<label for="hf-password" class=" form-control-label">Select
											Sub-Category</label>
									</div>
									<div class="col-12 col-md-9">
										<select name="subcat" class="form-control">
											<c:forEach items="${list}" var="subcat1">
												<option value="${subcat1.subcat_id}">${subcat1.subcat_name}</option>
											</c:forEach>

										</select>
									</div>
								</div>
								<div class="row form-group">
									<div class="col col-md-3">
										<label for="hf-email" class=" form-control-label">Design
											Price</label>
									</div>
									<div class="col-12 col-md-9">
										<input type="text" id="hf-email" name="price"
											placeholder="Enter Price Of Design" class="form-control">
									</div>
								</div>
								<div class="row form-group">
									<div class="col col-md-3">
										<label for="hf-email" class=" form-control-label">Upload
											First Photo</label>
									</div>
									<div class="col-12 col-md-9">
										<input type="file" accept="image/*"  id="hf-email" name="photo-1"
											placeholder="Upload Photo" class="form-control"> <span
											class="help-block">Please Upload Photo Of Upto 800KB</span>
									</div>
								</div>
								<div class="row form-group">
									<div class="col col-md-3">
										<label for="hf-email" class=" form-control-label">Upload
											Second Photo</label>
									</div>
									<div class="col-12 col-md-9">
										<input type="file" id="hf-email" accept="image/*"  name="photo-2"
											placeholder="Upload Photo" class="form-control"> <span
											class="help-block">Please Upload Photo Of Upto 800KB</span>
									</div>
								</div>
								<div class="row form-group">
									<div class="col col-md-3">
										<label for="hf-email" class=" form-control-label">Upload
											Third Photo</label>
									</div>
									<div class="col-12 col-md-9">
										<input type="file" accept="image/*"  id="hf-email" name="photo-3"
											placeholder="Upload Photo" class="form-control"> <span
											class="help-block"></span>
									</div>
								</div>
								<div class="row form-group">
									<div class="col col-md-3">
										<label for="hf-email" class=" form-control-label">Enter
											Quantity</label>
									</div>
									<div class="col-12 col-md-9">
										<input type="text" id="hf-email" name="quantity"
											placeholder="Enter Quantity" class="form-control">
									</div>
								</div>
								<div class="row form-group">
									<div class="col col-md-3">
										<label for="hf-email" class=" form-control-label">Enter
											length in cm</label>
									</div>
									<div class="col-12 col-md-9">
										<input type="text" id="hf-email" name="length"
											placeholder="Enter Length" class="form-control">
									</div>
								</div>

								<div class="row form-group">
									<div class="col col-md-3">
										<label for="hf-email" class=" form-control-label">Enter
											Width in cms</label>
									</div>
									<div class="col-12 col-md-9">
										<input type="text" id="hf-email" name="width"
											placeholder="Enter width" class="form-control">
									</div>
								</div>
								<div class="row form-group">
									<div class="col col-md-3">
										<label for="hf-email" class=" form-control-label">Enter
											details about product</label>
									</div>
									<div class="col-12 col-md-9">
										<textarea name="detail" id="" cols="30" rows="7"
											class="form-control" placeholder="About Design"></textarea>
									</div>
								</div>
						</div>
						<div class="card-footer">

							<button type="submit" class="btn btn-primary btn-sm">
								<i class=""></i>submit
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
