<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>




<!-- /.breadcrumb -->
<div class="body-content outer-top-xs">
	<div class="container">
		<div class="row single-product">
			<div class="col-md-3 sidebar">
				<div class="sidebar-module-container"></div>
			</div>
			<!-- /.sidebar -->
			<c:forEach items="${list}" var="detail">

				<div class="col-md-9">
					<div class="detail-block">
						<div class="row  wow fadeInUp animated"
							style="visibility: visible; animation-name: fadeInUp;">

							<div class="col-xs-12 col-sm-6 col-md-5 gallery-holder">
								<div
									class="product-item-holder size-big single-product-gallery small-gallery">
									<div class="single-product-gallery-thumbs gallery-thumbs">
										<div id="owl-single-product-thumbnails"
											style="opacity: 1; display: block;"
											class="owl-carousel owl-theme">
											<div class="owl-wrapper-outer">
												<div class="owl-wrapper"
													style="width: 750px; left: 0px; display: block;">

													<div class="col-lg-4 col-md-3 single-right-left">
														<div class="grid images_3_of_2">
															<div class="flexslider1">
																<ul class="slides">
																	<li data-thumb="images/mff1.jpg">
																		<div class="thumb-image">
																			<img
																				src="<c:url value="/resources/adminResources/image/${detail.item_img1}"/>"
																				data-imagezoom="true" alt=" " class="img-fluid">
																		</div>
																	</li>
																	<li data-thumb="images/mff2.jpg">
																		<div class="thumb-image">
																			<img
																				src="<c:url value="/resources/adminResources/image/${detail.item_img2}"/>"
																				data-imagezoom="true" alt=" " class="img-fluid">
																		</div>
																	</li>
																	<li data-thumb="images/mff3.jpg">
																		<div class="thumb-image">
																			<img
																				src="<c:url value="/resources/adminResources/image/${detail.item_img3}"/>"
																				data-imagezoom="true" alt=" " class="img-fluid">
																		</div>
																	</li>
																</ul>
																<div class="clearfix"></div>
															</div>





														</div>




													</div>
												</div>

												<div class="owl-controls clickable">
													<div class="owl-pagination">
														<div class="owl-page active">
															<span class=""></span>
														</div>
														<div class="owl-page a">
															<span class=""></span>
														</div>
														<div class="owl-page">
															<span class=""></span>
														</div>
													</div>
												</div>
											</div>
											<!-- /#owl-single-product-thumbnails -->
										</div>
										<!-- /.gallery-thumbs -->
									</div>
									<!-- /.single-product-gallery -->
								</div>









								<!-- /.gallery-holder -->
								<div class="col-sm-6 col-md-7 product-info-block">
									<div class="product-info">
										<h1 class="name">${detail.item_name}</h1>

										<div class="rating-reviews m-t-20">
											<div class="row">
												<div class="col-sm-3">
													<div class="rating rateit-small rateit">
														<button id="rateit-reset-5" data-role="none"
															class="rateit-reset" aria-label="reset rating"
															aria-controls="rateit-range-5" style="display: none;"></button>
														<div id="rateit-range-5" class="rateit-range" tabindex="0"
															role="slider" aria-label="rating"
															aria-owns="rateit-reset-5" aria-valuemin="0"
															aria-valuemax="5" aria-valuenow="4"
															style="width: 70px; height: 14px;" aria-readonly="true">
															<div class="rateit-selected"
																style="height: 14px; width: 56px;"></div>
															<div class="rateit-hover" style="height: 14px"></div>


														</div>
													</div>
												</div>
												<div class="col-sm-8">
													<div class="reviews">
														<a href="#" class="lnk">(13 Reviews)</a>
													</div>
												</div>
											</div>
											<!-- /.row -->
										</div>
										<!-- /.rating-reviews -->

										<div class="stock-container info-container m-t-10">
											<div class="row">
												<div class="col-sm-2">
													<div class="stock-box">
														<span class="label">Availability :</span>
													</div>
												</div>
												<div class="col-sm-9">
													<div class="stock-box">
														<span class="value">In Stock</span>
													</div>
												</div>
											</div>
											<!-- /.row -->
										</div>
										<!-- /.stock-container -->


										<div class="price-container info-container m-t-20">
											<div class="row">
												<div class="col-sm-6">
													<div class="price-box">
														<span class="price">${detail.price}</span> <span
															class="price-strike">$900.00</span>
													</div>
												</div>
											</div>
											<!-- /.row -->
										</div>
										<!-- /.price-container -->

										<div class="quantity-container info-container">
											<div class="row">

												<div class="col-sm-2">
													<span class="label">Qty :</span>
												</div>

												<div class="col-sm-2">
													<div class="cart-quantity">
														<div class="quant-input">
															<div class="arrows">
																<div class="arrow plus gradient">
																	<span class="ir"><i class="icon fa fa-sort-asc"></i></span>
																</div>
																<div class="arrow minus gradient">
																	<span class="ir"><i class="icon fa fa-sort-desc"></i></span>
																</div>
															</div>
															<input type="text" value="1">
														</div>
													</div>
												</div>

												<div class="col-sm-7">
													<a href="#" class="btn btn-primary"><i
														class="fa fa-shopping-cart inner-right-vs"></i> ADD TO
														CART</a>
												</div>


											</div>
											<!-- /.row -->
										</div>
										<!-- /.quantity-container -->

									</div>
									<!-- /.product-info -->
								</div>
								<!-- /.col-sm-7 -->
							</div>
							<!-- /.row -->
						</div>

						<div class="product-tabs inner-bottom-xs  wow fadeInUp animated"
							style="visibility: visible; animation-name: fadeInUp;">
							<div class="row">
								<div class="col-sm-3">
									<ul id="product-tabs" class="nav nav-tabs nav-tab-cell">
										<li class="active"><a data-toggle="tab"
											href="#description">DESCRIPTION</a></li>
										<li><a data-toggle="tab" href="#review">REVIEW</a></li>
										<li><a data-toggle="tab" href="#tags">TAGS</a></li>
									</ul>
									<!-- /.nav-tabs #product-tabs -->
								</div>
								<div class="col-sm-9">

									<div class="tab-content">

										<div id="description" class="tab-pane in active">
											<div class="product-tab">
												<p class="text">${detail.item_details}</p>
											</div>
										</div>
										<!-- /.tab-pane -->

										<div id="review" class="tab-pane">
											<div class="product-tab">

												<div class="product-reviews">
													<h4 class="title">Customer Reviews</h4>

													<div class="reviews">
														<div class="review">
															<div class="review-title">
																<span class="summary">We love this product</span><span
																	class="date"><i class="fa fa-calendar"></i><span>1
																		days ago</span></span>
															</div>
															<div class="text">"Lorem ipsum dolor sit amet,
																consectetur adipiscing elit.Aliquam suscipit."</div>
														</div>

													</div>
													<!-- /.reviews -->
												</div>
												<!-- /.product-reviews -->



												<div class="product-add-review">
													<h4 class="title">Write your own review</h4>
													<div class="review-table">
														<div class="table-responsive">
															<table class="table">
																<thead>
																	<tr>
																		<th class="cell-label">&nbsp;</th>
																		<th>1 star</th>
																		<th>2 stars</th>
																		<th>3 stars</th>
																		<th>4 stars</th>
																		<th>5 stars</th>
																	</tr>
																</thead>
																<tbody>
																	<tr>
																		<td class="cell-label">Quality</td>
																		<td><input type="radio" name="quality"
																			class="radio" value="1"></td>
																		<td><input type="radio" name="quality"
																			class="radio" value="2"></td>
																		<td><input type="radio" name="quality"
																			class="radio" value="3"></td>
																		<td><input type="radio" name="quality"
																			class="radio" value="4"></td>
																		<td><input type="radio" name="quality"
																			class="radio" value="5"></td>
																	</tr>
																	<tr>
																		<td class="cell-label">Price</td>
																		<td><input type="radio" name="quality"
																			class="radio" value="1"></td>
																		<td><input type="radio" name="quality"
																			class="radio" value="2"></td>
																		<td><input type="radio" name="quality"
																			class="radio" value="3"></td>
																		<td><input type="radio" name="quality"
																			class="radio" value="4"></td>
																		<td><input type="radio" name="quality"
																			class="radio" value="5"></td>
																	</tr>
																	<tr>
																		<td class="cell-label">Value</td>
																		<td><input type="radio" name="quality"
																			class="radio" value="1"></td>
																		<td><input type="radio" name="quality"
																			class="radio" value="2"></td>
																		<td><input type="radio" name="quality"
																			class="radio" value="3"></td>
																		<td><input type="radio" name="quality"
																			class="radio" value="4"></td>
																		<td><input type="radio" name="quality"
																			class="radio" value="5"></td>
																	</tr>
																</tbody>
															</table>
															<!-- /.table .table-bordered -->
														</div>
														<!-- /.table-responsive -->
													</div>
													<!-- /.review-table -->

													<div class="review-form">
														<div class="form-container">
															<form role="form" class="cnt-form">

																<div class="row">
																	<div class="col-sm-6">
																		<div class="form-group">
																			<label for="exampleInputName">Your Name <span
																				class="astk">*</span></label> <input type="text"
																				class="form-control txt" id="exampleInputName"
																				placeholder="">
																		</div>
																		<!-- /.form-group -->
																		<div class="form-group">
																			<label for="exampleInputSummary">Summary <span
																				class="astk">*</span></label> <input type="text"
																				class="form-control txt" id="exampleInputSummary"
																				placeholder="">
																		</div>
																		<!-- /.form-group -->
																	</div>

																	<div class="col-md-6">
																		<div class="form-group">
																			<label for="exampleInputReview">Review <span
																				class="astk">*</span></label>
																			<textarea class="form-control txt txt-review"
																				id="exampleInputReview" rows="4" placeholder=""></textarea>
																		</div>
																		<!-- /.form-group -->
																	</div>
																</div>
																<!-- /.row -->

																<div class="action text-right">
																	<button class="btn btn-primary btn-upper">SUBMIT
																		REVIEW</button>
																</div>
																<!-- /.action -->

															</form>
															<!-- /.cnt-form -->
														</div>
														<!-- /.form-container -->
													</div>
													<!-- /.review-form -->

												</div>
												<!-- /.product-add-review -->

											</div>
											<!-- /.product-tab -->
										</div>
										<!-- /.tab-pane -->

										<div id="tags" class="tab-pane">
											<div class="product-tag">

												<h4 class="title">Product Tags</h4>
												<form role="form" class="form-inline form-cnt">
													<div class="form-container">

														<div class="form-group">
															<label for="exampleInputTag">Add Your Tags: </label> <input
																type="email" id="exampleInputTag"
																class="form-control txt">


														</div>

														<button class="btn btn-upper btn-primary" type="submit">ADD
															TAGS</button>
													</div>
													<!-- /.form-container -->
												</form>
												<!-- /.form-cnt -->

												<form role="form" class="form-inline form-cnt">
													<div class="form-group">
														<label>&nbsp;</label> <span class="text col-md-offset-3">Use
															spaces to separate tags. Use single quotes (') for
															phrases.</span>
													</div>
												</form>
												<!-- /.form-cnt -->

											</div>
											<!-- /.product-tab -->
										</div>
										<!-- /.tab-pane -->

									</div>
									<!-- /.tab-content -->
								</div>
								<!-- /.col -->
							</div>
							<!-- /.row -->
						</div>
						<!-- /.product-tabs -->

					</div>
			</c:forEach>
			<!-- /.col -->
			<div class="clearfix"></div>
		</div>
		<!-- /.row -->
	</div>
</div>
