<%@ include file="A_header.jsp"%>
<!-- MAIN CONTENT-->
<div class="main-content">
	<div class="section__content section__content--p30">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-8">

					<div class="card">
						<form action="../A_update_cnstatus" method="post"
							class="form-horizontal">
							
							<div class="card-header">
								<strong>Update</strong> Delivery Status
							</div>
							<div class="card-body card-block" style="height: 200px;">

								<div class="row form-group"
									style="height: 60px; margin-top: 50px;">
									<div class="col col-md-3">
										<label for="hf-email" class=" form-control-label">Status:-</label>
									</div>
									<div class="col-12 col-md-9">
									<c:forEach items="${list1}" var="cn">
									<input type="hidden" name="cnorder_id" value="${cn.cnorder_id}">
										<select name="cnstatus" class="form-control" required="required">
											
												<option value="${cn.delivery_status}">${cn.delivery_status}</option>
												<option value="Work In Progress">Work In Progress</option>
												<option value="Under Shipment">Under Shipment</option>
												<option value="Out For Delivery">Out For Delivery</option>
											

										</select>
										
										</c:forEach>
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
