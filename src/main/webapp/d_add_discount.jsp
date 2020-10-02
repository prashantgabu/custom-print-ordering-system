<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp"%>
<!-- MAIN CONTENT-->
<div class="main-content">
	<div class="section__content section__content--p30">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-10">

					<div class="card">
						<form action="d_add_discount_code" method="post"
							class="form-horizontal">

							<div class="card-header">
								<strong>Add</strong> Discount/Offers
							</div>
							<div class="card-body card-block">

								<div class="row form-group">
									<div class="col col-md-3">
										<label for="hf-password" class=" form-control-label">Select
											Design</label>
									</div>
									<div class="col-12 col-md-9">
										<select name="designname" class="form-control"
											required="required">
											
											
											
											<c:forEach items="${list}" var="des">
											<c:set var="already" scope="session" value="0"/>
											<c:forEach items="${dislist}" var="dis">
											<c:if test="${dis.design.design_id!=des.design_id}">
											<c:set var="already" scope="session" value="1"/>
											</c:if>
											</c:forEach>
												
													<c:if test="already==0">
														<option value="${des.design_id}">${des.name}</option>
													</c:if>
												</c:forEach>
											
										</select>
									</div>
								</div>
								<div class="row form-group">
									<div class="col col-md-3">
										<label for="hf-email" class=" form-control-label">Discount
											(in %)</label>
									</div>
									<div class="col-12 col-md-9">
										<input type="number" id="hf-email" name="disamt"
											placeholder="Enter Discount" class="form-control"
											required="required"> <span class="help-block">Please
											enter Discount in percentage</span>
									</div>
								</div>
								<div class="row form-group">
									<div class="col col-md-3">
										<label for="hf-email" class=" form-control-label">Details</label>
									</div>
									<div class="col-12 col-md-9">
										<textarea class="form-control" rows="5" cols="15"
											name="details" required="required" placeholder="About Discount"></textarea>
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