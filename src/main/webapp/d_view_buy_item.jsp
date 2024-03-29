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
					<!-- DATA TABLE -->
					<h3 class="title-5 m-b-35">Orders</h3>
					<div class="table-data__tool">
						<div class="table-data__tool-left">
							<div class="rs-select2--light rs-select2--md">
								<select class="js-select2" name="property">
									<option selected="selected">All Properties</option>
									<option value="">Option 1</option>
									<option value="">Option 2</option>
								</select>
								<div class="dropDownSelect2"></div>
							</div>
							<div class="rs-select2--light rs-select2--sm">
								<select class="js-select2" name="time">
									<option selected="selected">Today</option>
									<option value="">3 Days</option>
									<option value="">1 Week</option>
								</select>
								<div class="dropDownSelect2"></div>
							</div>
							<button class="au-btn-filter">
								<i class="zmdi zmdi-filter-list"></i>filters
							</button>
						</div>
						<div class="table-data__tool-right">
							<button class="au-btn au-btn-icon au-btn--green au-btn--small">
								<i class="zmdi zmdi-plus"></i>add item
							</button>
							<div class="rs-select2--dark rs-select2--sm rs-select2--dark2">
								<select class="js-select2" name="type">
									<option selected="selected">Export</option>
									<option value="">Option 1</option>
									<option value="">Option 2</option>
								</select>
								<div class="dropDownSelect2"></div>
							</div>
						</div>
					</div>
					<div class="table-responsive table-responsive-data2">
						<table class="table table-data2">
							<thead>
								<tr>
									<th><label class="au-checkbox"> <input
											type="checkbox"> <span class="au-checkmark"></span>
									</label></th>
									<th>Buyer's Total</th>
									<th>Buyer's Name</th>
									<th>Buyer's Email</th>
									<th>Buyer's Address</th>
									<th>Design's Name</th>
									<th>Design's Photo</th>
									<th>Price</th>
									<th>Options</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list}" var="buy">
									<tr>
										<td><label class="au-checkbox"> <input
												type="checkbox"> <span class="au-checkmark"></span>
										</label></td>
										<td>${buy.buy_total}</td>
										<td>${buy.buyer.fname}</td>
										<td>${buy.buyer.email}</td>
										<td>${buy.buyer.address}</td>
										<td>${buy.design.name}</td>
										<td>${buy.design.photo_1}</td>
										<td>${buy.design.price}</td>
										<td>
											<div class="table-data-feature">

												<button class="item" data-toggle="tooltip"
													data-placement="top" title="Edit">
													<i class="zmdi zmdi-edit"></i>
												</button>
												<button class="item" data-toggle="tooltip"
															data-placement="top" title="Delete">
															<a href="d_delete_buy_item/${buy.buy_id}"> <i
																class="zmdi zmdi-delete"></i></a>
														</button>
											</div>
										</td>
									</tr>

								</c:forEach>
								<!-- 
								<tr class="tr-shadow">
									<td><label class="au-checkbox"> <input
											type="checkbox"> <span class="au-checkmark"></span>
									</label></td>
									<td>Lori Lynch</td>
									<td><span class="block-email">lori@example.com</span></td>
									<td class="desc">Samsung S8 Black</td>
									<td>2018-09-27 02:12</td>
									<td><span class="status--process">Processed</span></td>
									<td>$679.00</td>
									<td>
										<div class="table-data-feature">
											<button class="item" data-toggle="tooltip"
												data-placement="top" title="Send">
												<i class="zmdi zmdi-mail-send"></i>
											</button>
											<button class="item" data-toggle="tooltip"
												data-placement="top" title="Edit">
												<i class="zmdi zmdi-edit"></i>
											</button>
											<button class="item" data-toggle="tooltip"
												data-placement="top" title="Delete">
												<i class="zmdi zmdi-delete"></i>
											</button>
											<button class="item" data-toggle="tooltip"
												data-placement="top" title="More">
												<i class="zmdi zmdi-more"></i>
											</button>
										</div>
									</td>
								</tr>-->
							</tbody>
						</table>
					</div>
					<!-- END DATA TABLE -->
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="footer.jsp"%>
