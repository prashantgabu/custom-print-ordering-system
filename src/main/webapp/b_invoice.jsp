
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html>
<head>

<meta charset="utf-8">
<title>A simple, clean, and responsive HTML invoice template</title>
<script src="<c:url value="/resources/Buyer/js/jquery-git.js" />"></script>
<script src="<c:url value="/resources/Buyer/js/jspdf.min.js" />"></script>
<script src="<c:url value="/resources/Buyer/js/jspdf2.js" />"></script>

<style>
.invoice-box {
	max-width: 800px;
	margin: auto;
	padding: 30px;
	border: 1px solid #eee;
	box-shadow: 0 0 10px rgba(0, 0, 0, .15);
	font-size: 16px;
	line-height: 24px;
	font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
	color: #555;
}

.invoice-box table {
	width: 100%;
	line-height: inherit;
	text-align: left;
}

.invoice-box table td {
	padding: 5px;
	vertical-align: top;
}

.invoice-box table tr td:nth-child(2) {
	text-align: right;
}

.invoice-box table tr.top table td {
	padding-bottom: 20px;
}

.invoice-box table tr.top table td.title {
	font-size: 45px;
	line-height: 45px;
	color: #333;
}

.invoice-box table tr.information table td {
	padding-bottom: 40px;
}

.invoice-box table tr.heading td {
	background: #eee;
	border-bottom: 1px solid #ddd;
	font-weight: bold;
}

.invoice-box table tr.details td {
	padding-bottom: 20px;
}

.invoice-box table tr.item td {
	border-bottom: 1px solid #eee;
}

.invoice-box table tr.item.last td {
	border-bottom: none;
}

.invoice-box table tr.total td:nth-child(2) {
	border-top: 2px solid #eee;
	font-weight: bold;
}

@media only screen and (max-width: 600px) {
	.invoice-box table tr.top table td {
		width: 100%;
		display: block;
		text-align: center;
	}
	.invoice-box table tr.information table td {
		width: 100%;
		display: block;
		text-align: center;
	}
}

/** RTL **/
.rtl {
	direction: rtl;
	font-family: Tahoma, 'Helvetica Neue', 'Helvetica', Helvetica, Arial,
		sans-serif;
}

.rtl table {
	text-align: right;
}

.rtl table tr td:nth-child(2) {
	text-align: left;
}
</style>

</head>

<body>
	<c:set value="0" var="totalbill" scope="session" />

	<div id="pdfdiv">
		<div class="invoice-box">
			<table cellpadding="0" cellspacing="0">

				<tr class="top">
					<td colspan="2">
						<table>
							<tr>
								<td class="title"><img
									src="<c:url value="/resources/Buyer/images/logo.png"/>"
									style="width: 100%; max-width: 300px;"></td>

							</tr>
						</table>
					</td>
				</tr>
				<c:forEach items="${list1}" var="buy">
					<tr class="information">
						<td colspan="2">
							<table>
								<tr>
									<td>Shipping Address:-<br> ${buy.buyer.address}<br>
									</td>

									<td><img
										src="<c:url value="/resources/Buyer/images/${buy.buyer.propic}"/>"
										height="150px" width="150px"><br>
										${buy.buyer.fname} ${buy.buyer.lname}<br>
										${buy.buyer.email}</td>
								</tr>
							</table>
						</td>
					</tr>
				</c:forEach>

				<tr class="heading">
					<td>Payment Method</td>

					<td>Total Payment</td>
				</tr>

				<tr class="details">
					<td>Debit Card (Online)</td>

					<td>${sessionScope.totalbill}</td>
				</tr>

				<tr class="heading">
					<td>Design Details</td>

					<td>Value</td>
				</tr>
				<c:forEach items="${list1}" var="invo">
					<tr class="item">
						<td>Company Name</td>

						<td>${invo.companyname}</td>
					</tr>

					<tr class="item">
						<td>Other Details</td>

						<td>${invo.other_detail}</td>
					</tr>
					<tr class="item">
						<td>Address</td>

						<td>${invo.address}</td>
					</tr>
					<tr class="item">
						<td>Contact Number</td>

						<td>${invo.contact}</td>
					</tr>
					<tr class="item">
						<td>Name On Card</td>

						<td>${invo.name}</td>
					</tr>
					<tr class="item">
						<td>Email On Card</td>

						<td>${invo.email}</td>
					</tr>
					<tr class="item">
						<td>Picture 1</td>

						<td><img
							src="<c:url value="/resources/Buyer/images/${invo.picture_1}"/>" /></td>
					</tr>
					<tr class="item last">
						<td>Picture 2</td>

						<td><img
							src="<c:url value="/resources/Buyer/images/${invo.picture_2}"/>" /></td>
					</tr>

				</c:forEach>
				<tr class="heading">
					<td>Design</td>

					<td>Price</td>
				</tr>
				<c:forEach items="${list1}" var="vcart">
					<tr class="item">
						<td>${vcart.design.name}[Quantity:-${vcart.qty}]</td>

						<td>${vcart.discount}</td>
					</tr>

				</c:forEach>

				<tr class="heading">
					<td>Length X Width</td>
					<td>Photo</td>
				</tr>
				<c:forEach items="${list1}" var="vcart">
					<tr class="item">
						<td>${vcart.design.length}X${vcart.design.width}</td>
						<td><img
							src="<c:url value="/resources/Buyer/images/${vcart.design.photo_1}"/>" /></td>
					</tr>

				</c:forEach>
				<c:forEach items="${list1}" var="vcart">
					<c:set value="${totalbill+ (vcart.qty*vcart.discount)}"
						var="totalbill" scope="session" />

					<tr class="total">
						<td></td>

						<td>Total:<c:out value="${totalbill}"></c:out>
						</td>

					</tr>
				</c:forEach>
			</table>

		</div>
	</div>
	<div id="editor"></div>
	<a href="javascript:pdfview()" id="pdfview">Download PDF</a>

</body>

</html>
