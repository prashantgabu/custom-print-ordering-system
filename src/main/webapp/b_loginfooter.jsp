<!--footer-->
<div class="footer">
	<div class="container">
		<div class="footer-info">
			<div class="col-md-4 footer-grids wow fadeInUp animated"
				data-wow-delay=".5s">
				<p>
					� 2019 Printsalive. All rights reserved | Design by <a href=""
						target="_blank">Prashant Gabu</a>
				</p>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>

<script src="<c:url value="/resources/Buyer/js/jquery-1.11.1.min.js"/>"></script>
<!--//footer-->
<!--search jQuery-->
<script src="<c:url value="/resources/Buyer/js/main.js"/>"></script>
<!--//search jQuery-->
<!--smooth-scrolling-of-move-up-->
<script type="text/javascript">
	$(document).ready(function() {

		var defaults = {
			containerID : 'toTop', // fading element id
			containerHoverID : 'toTopHover', // fading element hover id
			scrollSpeed : 1200,
			easingType : 'linear'
		};

		$().UItoTop({
			easingType : 'easeOutQuart'
		});

	});
</script>
<!--//smooth-scrolling-of-move-up-->
<!--Bootstrap core JavaScript
    ================================================== -->
<!--Placed at the end of the document so the pages load faster -->
<script src="<c:url value="/resources/Buyer/js/bootstrap.js"/>"></script>
</body>
</html>