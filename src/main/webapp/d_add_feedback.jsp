<%@page import="java.util.Date"%>
<%@ include file="header.jsp"%>
<!-- MAIN CONTENT-->
<div class="main-content">
	<div class="section__content section__content--p30">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<%
							String name = session.getAttribute("designer_name").toString();
							String email = session.getAttribute("designer_email").toString();
							Date date = new Date();
							String date1 = date.toString();
						%>

						<div class="card-header">
							Give &nbsp;Your &nbsp;Valuable &nbsp;<strong>Feedback&nbsp;</strong>
							Here
						</div>
						<form action="d_add_feedback_code" method="post"
							class="form-horizontal">

							<div class="card-body card-block">
								<div class="row form-group">
									<div class="col col-md-3">
										<label for="hf-email" class=" form-control-label">Enter
											Your Email:-</label>
									</div>
									<input type="hidden" id="hf-email" name="email"
										placeholder="Enter Your Email" class="form-control"
										value="<%=email%>">
									<div class="col-12 col-md-9">
										<span><%=email%></span>
									</div>
								</div>
							</div>
							<div class="card-body card-block">
								<div class="row form-group">
									<div class="col col-md-3">
										<label for="hf-email" class=" form-control-label">Your
											Name:-</label>
									</div>
									<input type="hidden" id="hf-email" name="name"
										placeholder="Enter Your Name" class="form-control"
										required="required" value="<%=name%>">
									<div class="col-12 col-md-9">
										<span><%=name%></span>
									</div>
								</div>
							</div>
							<div class="card-body card-block">
								<div class="row form-group">
									<div class="col col-md-3">
										<label for="hf-email" class=" form-control-label">Today's
											Date And Current Time:-</label>
									</div>
									<div class="col-12 col-md-9">
										<%
											Date d = new Date();
											d.toString();
										%>
										<input type="text" id="hf-email" name="date"
											placeholder="Enter Your Name" class="form-control"
											value="<%=d%>" disabled="disabled">
									</div>
								</div>
								<div class="row form-group">
									<div class="col col-md-3">
										<label for="hf-email" class=" form-control-label">Enter
											Your Feedback</label>
									</div>
									<div class="col-12 col-md-9">
										<textarea rows="10" cols="10" class="form-control" name="msg"
											placeholder="Enter Your Feedback Here........"
											required="required"></textarea>
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
