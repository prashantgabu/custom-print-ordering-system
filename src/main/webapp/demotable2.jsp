<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<%@include file="header.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta
	content="A fully featured admin theme which can be used to build CRM, CMS, etc."
	name="description" />
<meta content="Coderthemes" name="author" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!-- App favicon -->
<link rel="shortcut icon"
	href="/resources/adminResources/images/favicon.ico">

</head>

<body>

	<!-- Begin page -->
	<div id="wrapper">



		<!-- ============================================================== -->
		<!-- Start Page Content here -->
		<!-- ============================================================== -->

		<div class="content-page">
			<div class="content">

				<!-- Start Content-->
				<div class="container-fluid">

					<!-- start page title -->
					<div class="row">
						<div class="col-12">
							<div class="page-title-box">
								<div class="page-title-right">
									<ol class="breadcrumb m-0">
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">UBold</a></li>
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">Tables</a></li>
										<li class="breadcrumb-item active">Datatables</li>
									</ol>
								</div>
								<h4 class="page-title">Category Viewr</h4>
							</div>
						</div>

					</div>
					<!-- end page title -->



					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-body">

									<h4 class="header-title">Buttons example</h4>


									<table id="datatable-buttons"
										class="table table-striped dt-responsive nowrap">
										<thead>
											<tr>
												<th>Offer Details</th>
												<th>Discount</th>
												<th>Shop Item</th>
											</tr>
										</thead>


										<tbody>
											<c:forEach items="${list}" var="offer">
												<tr>
													<td>${offer.offer_detail}</td>
													<td>${offer.discount}</td>
													<td>${offer.shopitem.item_name}</td>
												</tr>

											</c:forEach>
										</tbody>
									</table>

								</div>
								<!-- end card body-->
							</div>
							<!-- end card -->
						</div>
						<!-- end col-->
					</div>
					<!-- end row-->



				</div>
				<!-- container -->

			</div>
			<!-- content -->


		</div>

		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->


	</div>
	<!-- END wrapper -->

	<%@include file="footer.jsp"%>
