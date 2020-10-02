	//<![CDATA[
	$(window).on('load', function() {
		var doc = new jsPDF();
		var specialElementHandlers = {
			'#editor' : function(element, renderer) {
				return true;
			}
		};

		$('#pdfview').click(function() {
			doc.fromHTML($('#pdfdiv').html(), 15, 15, {
				'width' : 700,
				'elementHandlers' : specialElementHandlers
			});
			doc.save('file.pdf');
		});
	});//]]>
