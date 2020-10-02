<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@ include file="header.jsp"%>
<!-- MAIN CONTENT-->
<div class="main-content">
	<div class="section__content section__content--p30">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<c:forEach items="${list1}" var="des">
							<form action="../updateProfile" method="post"
								class="form-horizontal col-lg-12">
								<input type="hidden" name="oldphoto" value="${des.propic}" /> <input
									type="hidden" name="designer_id" value="${des.designer_id}">
								<div class="card-header">
									<strong>Edit</strong> Profile
								</div>

								<div class="card-body card-block" style="width: 600px;">
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="hf-email" class=" form-control-label">Profile Picture:-</label>
										</div>
										<div class="col-12 col-md-9">
											<input type="file" accept="image/*" id="hf-email" name="dphoto"
												placeholder="Enter Deisgn name" class="form-control"
												value="${des.propic}">
										</div>
									</div>
									<div class="row form-group">
										<div class="col-12 col-md-9">
											<input type="hidden" id="hf-email" name="dpassword"
												placeholder="Enter Deisgn name" class="form-control"
												value="${des.password}">
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="hf-email" class=" form-control-label">Name:-</label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="hf-email" name="dname"
												placeholder="Enter Deisgn name" class="form-control"
												value="${des.name}">
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="hf-email" class=" form-control-label">Store
												Name:-</label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="hf-email" name="dstorename"
												placeholder="Enter Deisgn name" class="form-control"
												value="${des.storename}">
										</div>
									</div>


									<div class="row form-group">
										<div class="col col-md-3">
											<label for="hf-email" class=" form-control-label">Email-ID:-</label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="hf-email" name="demail"
												class="form-control" value="${des.email}">
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="hf-email" class=" form-control-label">Contact:-</label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="hf-email" name="dcontact"
												class="form-control" value="${des.contact}">
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="hf-email" class=" form-control-label">City:-</label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="hf-email" name="dcity"
												class="form-control" value="${des.city}">
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="hf-email" class=" form-control-label">GST
												No.:-</label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="hf-email" name="dgst"
												class="form-control" value="${des.gstno}">
										</div>
									</div>

									<div class="row form-group">
										<div class="col col-md-3">
											<label for="hf-email" class=" form-control-label">Enter
												Membership</label>
										</div>
										<div class="col-12 col-md-9">
										<span>${des.sub_status}</span>
											<input type="hidden" id="hf-email" name="sub_status"
												placeholder="Enter Quantity" class="form-control"
												value="${des.sub_status}">
										</div>
									</div>

									<div class="row form-group">
										<div class="col col-md-3">
											<label for="hf-email" class=" form-control-label">Enter
												Address</label>
										</div>
										<div class="col-12 col-md-9">
											<textarea name="detail" id="" cols="30" rows="7"
												class="form-control" placeholder="Address">${des.address}</textarea>
										</div>
									</div>
								</div>
								<div class="card-footer">

									<button type="submit" class="btn btn-primary btn-sm">
										<i class=""></i>submit
									</button>


								</div>
							</form>
						</c:forEach>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="copyright">
								<p>
									Copyright © 2018 Colorlib. All rights reserved. Template by <a
										href="https://colorlib.com">Colorlib</a>.
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>
<%@ include file="footer.jsp"%>
