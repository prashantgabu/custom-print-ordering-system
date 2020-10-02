<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
<%@ page import="java.util.*"%>
<link rel="stylesheet"
	href="<c:url value="/resources/chartstyle.css" />">
<link rel="stylesheet" href="<c:url value="/resources/chart2.css" />">
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

<%
	double a = Double.parseDouble(session.getAttribute("ta").toString());
	double b = Double.parseDouble(session.getAttribute("tb").toString());
	double c = Double.parseDouble(session.getAttribute("tc").toString());
	double others = Double.parseDouble(session.getAttribute("tothers").toString());
	Gson gsonObj = new Gson();
	Map<Object, Object> map = null;
	List<Map<Object, Object>> list = new ArrayList<Map<Object, Object>>();

	map = new HashMap<Object, Object>();
	map.put("label", "Cards");
	map.put("y", a);
	list.add(map);
	map = new HashMap<Object, Object>();
	map.put("label", "Banners And Posters");
	map.put("y", b);
	list.add(map);
	map = new HashMap<Object, Object>();
	map.put("label", "Printed Clothin");
	map.put("y", c);
	list.add(map);
	map = new HashMap<Object, Object>();
	map.put("label", "Others");
	map.put("y", others);
	list.add(map);
	String dataPoints = gsonObj.toJson(list);
%><script type="text/javascript">
	window.onload = function() {

		var chart = new CanvasJS.Chart("chartContainer", {
			theme : "light2", // "light1", "dark1", "dark2"
			exportEnabled : true,
			animationEnabled : true,
			title : {
				text : "Orders per Sub-category"
			},
			data : [ {
				type : "pie",
				toolTipContent : "<b>{label}</b>: {y}%",
				indexLabelFontSize : 16,
				indexLabel : "{label} - {y}%",
				dataPoints :
<%out.print(dataPoints);%>
	} ]
		});
		chart.render();

	}
</script>
<%@ include file="A_header.jsp"%>

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
									<h2>${hlist1_len}</h2>
									<span>Total Pending Requests</span>
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
									<i class="zmdi zmdi-shopping-cart"></i>
								</div>
								<div class="text">
									<h2>${list2_len}</h2>
									<span>Total Verified Designers</span>
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
									<h2>${list1_len}</h2>
									<span>Total Registered Buyers</span>
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
									<span>Total Pending Orders</span>
								</div>
							</div>
							<div class="overview-chart"></div>
						</div>
					</div>
				</div>

			</div>

			<section class="wrapper">
				<div class="custom-bar-chart">
					<ul class="y-axis" style="padding: 25px">

					</ul>


					<div class="bar" style="margin: 0 10px">
						<div class="title">JAN</div>
						<div class="value tooltips" data-original-title="${tjanp}k"
							data-toggle="tooltip" data-placement="top">${tjanp}</div>
					</div>
					<div class="bar" style="margin: 0 10px">
						<div class="title">FEB</div>
						<div class="value tooltips" data-original-title="${tfebp}k"
							data-toggle="tooltip" data-placement="top">${tfebp}</div>
					</div>
					<div class="bar " style="margin: 0 10px">
						<div class="title">MAR</div>
						<div class="value tooltips" data-original-title="${tmarp}k"
							data-toggle="tooltip" data-placement="top">${tmarp}</div>
					</div>
					<div class="bar" style="margin: 0 10px">
						<div class="title">APR</div>
						<div class="value tooltips" data-original-title="${taprp}k"
							data-toggle="tooltip" data-placement="top">${taprp}</div>
					</div>
					<div class="bar" style="margin: 0 10px">
						<div class="title">MAY</div>
						<div class="value tooltips" data-original-title="${tmayp}k"
							data-toggle="tooltip" data-placement="top">${tmayp}</div>
					</div>
					<div class="bar" style="margin: 0 10px">
						<div class="title">JUN</div>
						<div class="value tooltips" data-original-title="${tjunp}k"
							data-toggle="tooltip" data-placement="top">${tjunp}</div>
					</div>
					<div class="bar" style="margin: 0 10px">
						<div class="title">JUL</div>
						<div class="value tooltips" data-original-title="${tjulp}k"
							data-toggle="tooltip" data-placement="top">${tjulp}</div>
					</div>
					<div class="bar" style="margin: 0 10px">
						<div class="title">AUG</div>
						<div class="value tooltips" data-original-title="${taugp}k"
							data-toggle="tooltip" data-placement="top">${taugp}</div>
					</div>
					<div class="bar" style="margin: 0 10px">
						<div class="title">SEP</div>
						<div class="value tooltips" data-original-title="${tsepp}k"
							data-toggle="tooltip" data-placement="top">${tsepp}</div>
					</div>
					<div class="bar" style="margin: 0 10px">
						<div class="title">OCT</div>
						<div class="value tooltips" data-original-title="${toctp}k"
							data-toggle="tooltip" data-placement="top">${toctp}</div>
					</div>
					<div class="bar" style="margin: 0 10px">
						<div class="title">NOV</div>
						<div class="value tooltips" data-original-title="${tnovp}k"
							data-toggle="tooltip" data-placement="top">${tnovp}</div>
					</div>
					<div class="bar" style="margin: 0 10px">
						<div class="title">DEC</div>
						<div class="value tooltips" data-original-title="${tdecp}k"
							data-toggle="tooltip" data-placement="top">${tdecp}</div>
					</div>


				</div>
				<div></div>
			</section>
			<hr>

			<div id="chartContainer" style="height: 370px; width: 100%;"></div>
			<hr>
		</div>
		<!-- END MAIN CONTENT-->
		<!-- END PAGE CONTAINER-->
	</div>

</div>

<%@ include file="footer.jsp"%>

<script src="<c:url value="/resources/jquery.nicescroll.js" />"
	type="text/javascript"></script>
<script src="<c:url value="/resources/common-scripts.js" />"
	type="text/javascript"></script>
