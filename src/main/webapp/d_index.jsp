<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="header.jsp"%>
<!-- MAIN CONTENT-->
<div class="main-content">
	<div class="section__content section__content--p30">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="overview-wrap">
						<h2 class="title-1">overview</h2>
					</div>
				</div>
			</div>
			<div class="row m-t-25">
				<div class="col-sm-6 col-lg-3">
					<div class="overview-item overview-item--c1">
						<div class="overview__inner">
							<div class="overview-box clearfix">
								<div class="icon">
									<i class="zmdi zmdi-account-o"></i>
								</div>
								<div class="text">
									<h2>${list1_len}</h2>
									<span>Total Designs</span>
								</div>
							</div>
							<div class="overview-chart"></div>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-lg-3">
					<div class="overview-item overview-item--c2">
						<div class="overview__inner">
							<div class="overview-box clearfix">
								<div class="icon">
									<i class="zmdi zmdi-calendar-note"></i>
								</div>
								<div class="text">
									<h2>${list2_len}</h2>
									<span>Total Confirm</span> <br> <span>Orders</span>
								</div>
							</div>
							<div class="overview-chart"></div>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-lg-3">
					<div class="overview-item overview-item--c3">
						<div class="overview__inner">
							<div class="overview-box clearfix">
								<div class="icon">
									<i class="zmdi zmdi-calendar-note"></i>
								</div>
								<div class="text">
									<h2>${list3_len}</h2>
									<span>Total Pending </span><br> <span>Orders</span>
								</div>
							</div>
							<div class="overview-chart"></div>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-lg-3">
					<div class="overview-item overview-item--c4">
						<div class="overview__inner">
							<div class="overview-box clearfix">
								<div class="icon">
									<i class="zmdi zmdi-calendar-note"></i>
								</div>
								<div class="text">
									<h2>${list4_len}</h2>
									<span>Total Designs</span><br> <span>With Discount</span>
								</div>
							</div>
							<div class="overview-chart"></div>
						</div>
					</div>
				</div>

			</div>

			<div class="row">
				<div class="col-lg-12">
					<h2 class="title-1 m-b-25">New Orders</h2>
					<div class="table-responsive table--no-card m-b-40">
						<table class="table table-striped table-datat3" >
							<thead>
								<tr>
									<th>Order ID</th>
									<th>Name Of Buyer</th>
									<th>Delivery Address</th>
								</tr>
							</thead>
							<tbody id="myTable">
								<c:forEach items="${list3}" var="li">
									<tr>
										<td>${li.cnorder_id}</td>
										<td>${li.buyer.fname}${li.buyer.lname}</td>
										<td>${li.buyer.address}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- END MAIN CONTENT-->
	<!-- END PAGE CONTAINER-->
</div>
<%@ include file="footer.jsp"%>