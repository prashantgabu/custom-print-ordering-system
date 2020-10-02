<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="b_header.jsp"%>

<!--banner-->
<!--banner-->
<div class="banner">
	<div class="container">
		<div class="banner-text">
				<div class="clearfix"></div>
		</div>
	</div>
</div>
<!--//banner-->
<!--//banner-->
<!--new-->
<div class="new">
	<div class="container">
		<header class="cd-main-header">
			<ul class="cd-header-buttons">
				<li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
			</ul>
			<!-- cd-header-buttons -->
		</header>
	</div>
	<!--//navbar-header-->
	<div id="cd-search" class="cd-search">
		<form action="b_search" method="get">
			<input name="search" type="search" placeholder="Search...">
		</form>
	</div>
	<div class="title-info wow fadeInUp animated" data-wow-delay=".5s">
		<h3 class="title">
			New <span>Arrivals</span>
		</h3>
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit
			curabitur</p>
	</div>
	<c:if test="${msg=='No items'}">
		<h1>No items Found</h1>
	</c:if>
	<div class="new-info">

		<c:set var="cat_id" scope="session" value="1" />

		<c:forEach items="${list}" var="rev">

			<c:if test="${rev.subcat.cat.cat_id==4}">
				<div
					class="col-md-3 new-grid simpleCart_shelfItem wow flipInY animated"
					data-wow-delay=".5s" style="padding: 10px;">
					<div class="new-top">
						<a href="b_single_card/${rev.design_id}"><img
							src="<c:url value="/resources/Buyer/images/${rev.photo_1}"/>"
							style="width: 250px; height: 250px;" class="img-responsive"
							alt="" /></a>
						<div class="new-text">
							<ul>
								<li><a href="b_single_other/${rev.design_id}">Quick View
								</a></li>
							</ul>
						</div>
					</div>
					<div class="new-bottom">
						<h5>
							<a class="name" href="b_single_other/${rev.design_id}">${rev.name}</a>
						</h5>

						<div class="ofr">
							<p class="pric1">
								<del>${rev.price}</del>
							</p>
							<p>
								<c:forEach var="listdis" items="${listdis}">
									<c:if test="${rev.design_id==listdis.design.design_id}">
										<c:set value="100" var="discount" scope="session" />
										
						You get Discount of ${listdis.dis_amt} % <br>
						<c:set value="${listdis.dis_amt}" var="discount" scope="session" />

										<c:if test="${(discount * rev.price /100)>0}">
											<c:out value="${discount * rev.price /100 } " />
										</c:if>

									</c:if>
								</c:forEach>
							</p>
			</c:if>
	</div>

</div>
</div>
</c:forEach>
<div class="clearfix"></div>
</div>
</div>
</div>
<!--//new-->
<%@ include file="b_footer.jsp"%>