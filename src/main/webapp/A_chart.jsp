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
<%@ include file="A_header.jsp"%>

<%
	double jan = Double.parseDouble(session.getAttribute("tjanp").toString());
	double feb = Double.parseDouble(session.getAttribute("tfebp").toString());
	double mar = Double.parseDouble(session.getAttribute("tmarp").toString());
	double apr = Double.parseDouble(session.getAttribute("taprp").toString());
	double may = Double.parseDouble(session.getAttribute("tmayp").toString());
	double jun = Double.parseDouble(session.getAttribute("tjunp").toString());
	double jul = Double.parseDouble(session.getAttribute("tjulp").toString());
	double aug = Double.parseDouble(session.getAttribute("taugp").toString());
	double sep = Double.parseDouble(session.getAttribute("tsepp").toString());
	double oct = Double.parseDouble(session.getAttribute("toctp").toString());
	double nov = Double.parseDouble(session.getAttribute("tnovp").toString());
	double dec = Double.parseDouble(session.getAttribute("tdecp").toString());

	Gson gsonObj = new Gson();
	Map<Object, Object> map = null;
	List<Map<Object, Object>> list = new ArrayList<Map<Object, Object>>();

	map = new HashMap<Object, Object>();
	map.put("label", "Jan");
	map.put("y", jan);
	list.add(map);
	map = new HashMap<Object, Object>();
	map.put("label", "Feb");
	map.put("y", feb);
	list.add(map);
	map = new HashMap<Object, Object>();
	map.put("label", "Mar");
	map.put("y", mar);
	list.add(map);
	map = new HashMap<Object, Object>();
	map.put("label", "Apr");
	map.put("y", apr);
	list.add(map);
	map = new HashMap<Object, Object>();
	map.put("label", "May");
	map.put("y", may);
	list.add(map);
	map = new HashMap<Object, Object>();
	map.put("label", "Jun");
	map.put("y", jun);
	list.add(map);
	map = new HashMap<Object, Object>();
	map.put("label", "Jul");
	map.put("y", jul);
	list.add(map);
	map = new HashMap<Object, Object>();
	map.put("label", "Aug");
	map.put("y", aug);
	list.add(map);
	map = new HashMap<Object, Object>();
	map.put("label", "Sep");
	map.put("y", sep);
	list.add(map);
	map = new HashMap<Object, Object>();
	map.put("label", "Oct");
	map.put("y", oct);
	list.add(map);
	map = new HashMap<Object, Object>();
	map.put("label", "Nov");
	map.put("y", nov);
	list.add(map);
	map = new HashMap<Object, Object>();
	map.put("label", "Dec");
	map.put("y", dec);
	list.add(map);

	String dataPoints = gsonObj.toJson(list);
%>
<script type="text/javascript">
	window.onload = function() {

		var chart = new CanvasJS.Chart("chartContainer", {
			animationEnabled : true,
			exportEnabled : true,
			title : {
				text : "Simple Column Chart with Index Labels"
			},
			data : [ {

				type : "column", //change type to bar, line, area, pie, etc
				indexLabel : "{y}", //Shows y value on all Data Points
				indexLabelFontColor : "#5A5757",
				indexLabelPlacement : "outside",
				dataPoints :
<%out.print(dataPoints);%>
	} ]
		});
		chart.render();

	}
</script>

<!-- MAIN CONTENT-->
<div class="main-content">
	<div class="section__content section__content--p30">
		<div class="container-fluid">

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
