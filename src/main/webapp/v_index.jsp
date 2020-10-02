
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="v_header.jsp"%>

<!--banner-->
<!--banner-->
<div class="container">
	<div class="clearfix"></div>
</div>
<!--//banner-->
<!--//banner-->
<!--new-->
<div class="new">
	<div class="container">
			
		<div class="title-info wow fadeInUp animated" data-wow-delay=".5s">
			<h3 class="title">
				Cate<span>Gories</span>
			</h3>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit
				curabitur</p>
		</div>

		<c:forEach items="${list}" var="cat1">

			<div class="new-info">
				<div
					class="col-md-3 new-grid simpleCart_shelfItem wow flipInY animated"
					data-wow-delay=".5s">
					<div class="new-top">
						<img
							src="<c:url value="/resources/Buyer/images/${cat1.cat_photo}" />"
							class="img-responsive" alt=""
							style="height: 200px; width: 400px;" />

					</div>
					<div class="new-bottom">
						<c:set var="cats" scope="session" value="${cat1.cat_id}" />
						<c:choose>
							<c:when test="${cats==1}">
								<h5>
									<a class="name" href="b_cardlist">${cat1.cat_name}</a>
								</h5>
							</c:when>
							<c:when test="${cats==2}">
								<h5>
									<a class="name" href="b_bannerlist">${cat1.cat_name}</a>
								</h5>
							</c:when>
							<c:when test="${cats==3}">
								<h5>
									<a class="name" href="b_tshirtlist">${cat1.cat_name}</a>
								</h5>
							</c:when>
							<c:when test="${cats==4}">
								<h5>
									<a class="name" href="b_otherlist">${cat1.cat_name}</a>
								</h5>
							</c:when>
						</c:choose>

					</div>
				</div>
		</c:forEach>

		<div class="clearfix"></div>
	</div>
</div>
<script defer
	src="<c:url value="/resources/Buyer/js/jquery.flexslider.js"/>"></script>
<!--//new-->
<%@ include file="b_footer.jsp"%>