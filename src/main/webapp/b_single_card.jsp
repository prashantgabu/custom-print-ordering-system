<%@ include file="b_singleheader.jsp"%>
<!--//header-->
<!--breadcrumbs-->
<div class="breadcrumbs">
	<div class="container">
		<ol class="breadcrumb breadcrumb1 animated wow slideInLeft"
			data-wow-delay=".5s">
			<li><a href="index.html"><span
					class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
			<li class="active">Single page</li>
		</ol>
	</div>
</div>
<!--//breadcrumbs-->
<!--single-page-->

<div class="single">
	<div class="container">
		<c:forEach items="${list}" var="sing">
			<c:set value="${sing.subcat.cat.cat_id}" var="rel" scope="session" />
			<div class="single-info">
				<div class="col-md-6 single-top wow fadeInLeft animated"
					data-wow-delay=".5s">
					<div class="flexslider">
						<ul class="slides">
							<li
								data-thumb="<c:url value="/resources/Buyer/images/${sing.photo_1}"/>">
								<div class="thumb-image">
									<img
										src="<c:url value="/resources/Buyer/images/${sing.photo_1}"/> "
										data-imagezoom="true" class="img-responsive" alt="">
								</div>
							</li>
							<li
								data-thumb="<c:url value="/resources/Buyer/images/${sing.photo_2}"/>"
								style="width: 50px; height: 50px;">
								<div class="thumb-image">
									<img
										src="<c:url value="/resources/Buyer/images/${sing.photo_2}" />"
										data-imagezoom="true" class="img-responsive" alt="">
								</div>
							</li>
							<li
								data-thumb="<c:url value="/resources/Buyer/images/${sing.photo_3}"/>">
								<div class="thumb-image">
									<img
										src="<c:url value="/resources/Buyer/images/${sing.photo_3}"/>"
										data-imagezoom="true" class="img-responsive" alt="">
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div
					class="col-md-6 single-top-left simpleCart_shelfItem wow fadeInRight animated"
					data-wow-delay=".5s">
					<h3>${sing.name}</h3>

					<h6 class="item_price">

						Rs : ${sing.price}.0 /-

						<c:set value="100" var="discount" scope="session" />
						<c:forEach var="listdis" items="${listdis}">
						You get Discount of ${listdis.dis_amt} % 
						<c:set value="${listdis.dis_amt}" var="discount" scope="session" />
						</c:forEach>

						<c:if test="${(discount * sing.price /100)>0}">
							<c:out value="${discount * sing.price /100 } " />
						</c:if>
					</h6>
					<br>
					<div class="clearfix"></div>
					<form action="../b_add_cardcart_code" method="get">
						<input type="hidden" value="${sing.design_id}" name="design_id">
						<div class="form-group">
							<p class="qty">Company Name :</p>
							<input type="text" class="form-control" name="companyname">
						</div>
						<div class="form-group">
							<p class="qty">Company Message:</p>
							<input type="text" class="form-control" name="companymsg">
						</div>
						<div class="form-group">
							<p class="qty">Contact Number:</p>
							<input type="text" class="form-control" name="contact">
						</div>
						<div class="form-group">
							<p class="qty">Full Name:</p>
							<input type="text" name="fullname" class="form-control">
						</div>
						<div class="form-group">
							<p class="qty">Address :</p>
							<input type="text" name="address" class="form-control">
						</div>
						<div class="form-group">
							<p class="qty">Email-ID:</p>
							<input type="text" name="email" class="form-control">
						</div>
						<div class="form-group">
							<p class="qty">Upload Logo:</p>
							<input type="file" name="picture_1" class="form-control">
						</div>
						<div class="quantity">
							<p class="qty">Qty :</p>
							<input min="1" type="number" name="quant" value="1"
								class="item_quantity">
						</div>
						<div class="quantity">
							<input type="hidden" name="dis"
								value="${discount * sing.price /100 } " class="item_quantity">
						</div>
						<div class="btn_form">
							<input type="submit" value="ADD TO CART">
						</div>
					</form>
				</div>
				<div class="clearfix"></div>
			</div>
			<!--collapse-tabs-->
			<div class="collpse tabs">
				<div class="panel-group collpse" id="accordion" role="tablist"
					aria-multiselectable="true">
					<div class="panel panel-default wow fadeInUp animated"
						data-wow-delay=".5s">
						<div class="panel-heading" role="tab" id="headingOne">
							<h4 class="panel-title">
								<a role="button" data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne" aria-expanded="true"
									aria-controls="collapseOne"> Description </a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in"
							role="tabpanel" aria-labelledby="headingOne">
							<div class="panel-body">${sing.detail}</div>
						</div>
					</div>

					<div class="panel panel-default wow fadeInUp animated"
						data-wow-delay=".7s">
						<div class="panel-heading" role="tab" id="headingThree">
							<h4 class="panel-title">
								<a class="collapsed" role="button" data-toggle="collapse"
									data-parent="#accordion" href="#collapseThree"
									aria-expanded="false" aria-controls="collapseThree">
									reviews (<span>${rev_len}</span>)
								</a>
							</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingThree">
							<div class="panel-body">
								<c:forEach items="${list1}" var="re">


									<p>${re.review_msg}${re.rating}</p>


									<c:if test="${re.rating==5}">

										<img src='<c:url value="/resources/Buyer/images/star1.png"/>' />
										<img src='<c:url value="/resources/Buyer/images/star1.png"/>' />
										<img src='<c:url value="/resources/Buyer/images/star1.png"/>' />
										<img src='<c:url value="/resources/Buyer/images/star1.png"/>' />
										<img src='<c:url value="/resources/Buyer/images/star1.png"/>' />


									</c:if>
									<c:if test="${re.rating==4}">
										<img src='<c:url value="/resources/Buyer/images/star1.png"/>' />
										<img src='<c:url value="/resources/Buyer/images/star1.png"/>' />
										<img src='<c:url value="/resources/Buyer/images/star1.png"/>' />
										<img src='<c:url value="/resources/Buyer/images/star1.png"/>' />
										<img src='<c:url value="/resources/Buyer/images/star.png"/>' />

									</c:if>
									<c:if test="${re.rating==3}">

										<img src='<c:url value="/resources/Buyer/images/star1.png"/>' />
										<img src='<c:url value="/resources/Buyer/images/star1.png"/>' />
										<img src='<c:url value="/resources/Buyer/images/star1.png"/>' />
										<img src='<c:url value="/resources/Buyer/images/star.png"/>' />
										<img src='<c:url value="/resources/Buyer/images/star.png"/>' />


									</c:if>
									<c:if test="${re.rating==2}">
										<div class="single-rating">
											<span class="starRating"> <input id="rating5"
												type="radio" name="rating" value="5" disabled="disabled">
												<label for="rating5">5</label> <input id="rating4"
												type="radio" name="rating" value="4" disabled="disabled">
												<label for="rating4">4</label> <input id="rating3"
												type="radio" name="rating" value="3" disabled="disabled">
												<label for="rating3">3</label> <input id="rating2"
												type="radio" name="rating" value="2" checked="checked"
												disabled="disabled"> <label for="rating2">2</label>
												<input id="rating1" type="radio" name="rating" value="1"
												disabled="disabled"> <label for="rating1">1</label>
											</span>
										</div>

									</c:if>
									<c:if test="${re.rating==1}">
										<div class="single-rating">
											<span class="starRating"> <input id="rating5"
												type="radio" name="rating" value="5" disabled="disabled">
												<label for="rating5">5</label> <input id="rating4"
												type="radio" name="rating" value="4" disabled="disabled">
												<label for="rating4">4</label> <input id="rating3"
												type="radio" name="rating" value="3" disabled="disabled">
												<label for="rating3">3</label> <input id="rating2"
												type="radio" name="rating" value="2" disabled="disabled">
												<label for="rating2">2</label> <input id="rating1"
												type="radio" name="rating" value="1" checked="checked"
												disabled="disabled"> <label for="rating1">1</label>
											</span>
										</div>

									</c:if>






								</c:forEach>


							</div>
						</div>
					</div>
					<div class="panel panel-default wow fadeInUp animated"
						data-wow-delay=".8s">
						<div class="panel-heading" role="tab" id="headingFour">
							<h4 class="panel-title">
								<a class="collapsed" role="button" data-toggle="collapse"
									data-parent="#accordion" href="#collapseFour"
									aria-expanded="false" aria-controls="collapseFour"> help </a>
							</h4>
						</div>
						<div id="collapseFour" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingFour">
							<div class="panel-body">Anim pariatur cliche reprehenderit,
								enim eiusmod high life accusamus terry richardson ad squid. 3
								wolf moon officia aute, non cupidatat skateboard dolor brunch.
								Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
								tempor, sunt aliqua put a bird on it squid single-origin coffee
								nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica,
								craft beer labore wes anderson cred nesciunt sapiente ea
								proident. Ad vegan excepteur butcher vice lomo. Leggings
								occaecat craft beer farm-to-table, raw denim aesthetic synth
								nesciunt you probably haven't heard of them accusamus labore
								sustainable VHS.</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
		<!--//collapse -->
		<!--related-products-->

		<div class="related-products">

			<div class="title-info wow fadeInUp animated" data-wow-delay=".5s">
				<h3 class="title">
					Related<span> Products</span>
				</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit
					curabitur</p>
			</div>
			<c:forEach items="${listalldesign}" var="post1">
				<c:if test="${post1.subcat.cat.cat_id==rel}">

					<div class="related-products-info">

						<div
							class="col-md-3 new-grid simpleCart_shelfItem wow flipInY animated"
							data-wow-delay=".5s">

							<div class="new-top">
								<a href="single.html"><img src="images/g9.jpg"
									class="img-responsive" alt="" /></a>
								<div class="new-text">
									<ul>
										<li><a href="single.html">Quick View </a></li>
									</ul>
								</div>
							</div>
							<div class="new-bottom">
								<h5>
									<a class="name" href="single.html">${post1.name}</a>
								</h5>
								<div class="rating">
									<span class="on">☆</span> <span class="on">☆</span> <span
										class="on">☆</span> <span class="on">☆</span> <span>☆</span>
								</div>
								<div class="ofr">
									<p class="pric1">
										<del>$2000.00</del>
									</p>
									<p>
										<span class="item_price">$500</span>
									</p>
								</div>
							</div>
						</div>

						<div class="clearfix"></div>
					</div>
				</c:if>
			</c:forEach>

		</div>
	</div>
	<!--//related-products-->
</div>
</div>
<!--//single-page-->
<!--footer-->
<%@ include file="b_footer.jsp"%>