<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp"%>

<script>
	function validatePassword() {
		var pass2 = document.getElementById("password2").value;
		var pass1 = document.getElementById("password1").value;

		if (pass1 != pass2)
			document.getElementById("password2").setCustomValidity(
					"Passwords Doesn't Match");
		else
			document.getElementById("password2").setCustomValidity('');
		//empty string means no validation error
	}
</script>

<!-- MAIN CONTENT-->
<div class="main-content">
	<div class="section__content section__content--p30">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-10">

					<div class="card">
						<form action="d_change_password_code" method="post"
							class="form-horizontal">

							<div class="card-header">
								<strong>Change</strong> Password
							</div>
							<div class="card-body card-block">

								<div class="row form-group">
									<div class="col col-md-3">
										<label for="hf-password" class=" form-control-label">Old
											Password</label>
									</div>
									<div class="col-12 col-md-9">
										<input type="password" id="hf-password" name="oldpwd"
											placeholder="Enter Old Password" class="form-control"
											required="required">
									</div>
								</div>
								<div class="row form-group">
									<div class="col col-md-3">
										<label for="hf-password" class=" form-control-label">New
											Password</label>
									</div>
									<div class="col-12 col-md-9">
										<input type="password" id="password1" name="newpwd"
											placeholder="Enter New Password" class="form-control"
											required="required">
									</div>
								</div>
								<div class="row form-group">
									<div class="col col-md-3">
										<label for="hf-password" class=" form-control-label">Re-Type
											Password</label>
									</div>
									<div class="col-12 col-md-9">
										<input type="password" id="password2" name="repwd"
											placeholder="Enter Re-Type New Password" class="form-control"
											required="required">
									</div>
								</div>
							</div>
							<div class="card-footer">
								<button type="submit" onClick="validatePassword();" class="btn btn-primary btn-sm">
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