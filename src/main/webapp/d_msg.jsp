<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="header.jsp"%>


<!-- MAIN CONTENT-->
<div class="main-content">
	<div class="section__content section__content--p30">
		<div class="container-fluid">
			<div class="row">

				<div class="col-lg-12">
					<div class="au-card au-card--no-shadow au-card--no-pad m-b-40">
						<div class="au-card-title"
							style="background-image: url('images/bg-title-02.jpg');">
							<div class="bg-overlay bg-overlay--blue"></div>
							<h3>
								<i class="zmdi zmdi-comment-text"></i>Messages
							</h3>

						</div>

						<div class="au-inbox-wrap js-inbox-wrap">
							<div class="au-chat">
								<div class="au-chat__title">
									<div class="au-chat-info">
										<div class="avatar-wrap online"></div>
										<span class="nick"> <a href="#">${name}</a>
										</span>
									</div>
								</div>

								<div class="au-chat__content">
									<c:forEach items="${list}" var="dmsg">
										<c:if test="${dmsg.sender=='buyer'}">
											<div class="recei-mess-wrap">
												<span class="mess-time">${dmsg.date}</span>
												<div class="recei-mess__inner">

													<div class="recei-mess-list">
														<div class="recei-mess">${dmsg.msg}</div>

													</div>
												</div>
												<div class="recei-mess__inner">

													<div class="recei-mess-list">
														<div class="recei-mess">${dmsg.file}</div>

													</div>
												</div>
											</div>
										</c:if>
										<c:if test="${dmsg.sender=='designer'}">

											<div class="send-mess-wrap">
												<span class="mess-time"> ${dmsg.date} </span>
												<div class="send-mess__inner">
													<div class="send-mess-list">
														<div class="send-mess">${dmsg.msg}</div>
													</div>
												</div>
												<div class="recei-mess__inner">

													<div class="recei-mess-list">
														<div class="recei-mess">${dmsg.file}</div>

													</div>
												</div>
											</div>

										</c:if>
									</c:forEach>
								</div>

								<div class="au-chat-textfield">
									<form action="../d_add_msg_code" class="au-form-icon">
										<input type="hidden" name="buyer_id" value="${buyer_id}" /> <input
											class="au-input au-input--full au-input--h65" type="text"
											placeholder="Type a message" name="msg" /> <input
											name="file" class="au-input-icon zmdi zmdi-camera"
											type="file" placeholder="Send A file" />

									</form>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="copyright">
						<p>
							Copyright © 2018 Colorlib. All rights reserved. Template by <a
								href="https://colorlib.com">Colorlib</a>.
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END MAIN CONTENT-->
<!-- END PAGE CONTAINER-->
</div>

</div>
<%@ include file="footer.jsp"%>