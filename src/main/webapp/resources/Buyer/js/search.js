function VerifyUploadSizeIsOK()
{
   /* Attached file size check. Will Bontrager Software LLC, https://www.willmaster.com */
   var UploadFieldID = "file-upload";
   var MaxSizeInBytes = 2097152;
   var fld = document.getElementById(UploadFieldID);
   if( fld.files && fld.files.length == 1 && fld.files[0].size > MaxSizeInBytes )
   {
      alert("The file size must be no more than " + parseInt(MaxSizeInBytes/1024/1024) + "MB");
      return false;
   }
   return true;
} // function VerifyUploadSizeIsOK()

/*
///jQuery  to validate -
$("#file").change(function () {
	    if(fileExtValidate(this)) { // file extension validation function
	    	 if(fileSizeValidate(this)) { // file size validation function
	    	 	showImg(this);
	    	 }	 
	    }    
    });
// function for  validate file extension
var validExt = ".png, .gif, .jpeg, .jpg";
function fileExtValidate(fdata) {
 var filePath = fdata.value;
 var getFileExt = filePath.substring(filePath.lastIndexOf('.') + 1).toLowerCase();
 var pos = validExt.indexOf(getFileExt);
 if(pos < 0) {
 	alert("This file is not allowed, please upload valid file.");
 	return false;
  } else {
  	return true;
  }
}
//function for validate file size 
var maxSize = '1024';
function fileSizeValidate(fdata) {
	 if (fdata.files && fdata.files[0]) {
                var fsize = fdata.files[0].size/1024;
                if(fsize > maxSize) {
                	 alert('Maximum file size exceed, This file size is: ' + fsize + "KB");
                	 return false;
                } else {
                	return true;
                }
     }
 }   

Filevalidation = () => { 
        const fi = document.getElementById('file'); 
        // Check if any file is selected.
        if (fi.files.length > 0) { 
            for (const i = 0; i <= fi.files.length - 1; i++) { 
  
                const fsize = fi.files.item(i).size; 
                const file = Math.round((fsize / 1024)); 
                // The size of the file.
                if (file >= 1024) { 
                	document.getElementById('dis').disabled = true;
                    alert( 
                      "File too Big, please select a file less than 4mb"); 
                } else if (file < 200) {
                	document.getElementById('dis').disabled = true;
                    alert( 
                      "File too small, please select a file greater than 2mb"); 
                } else { 
                    document.getElementById('size').innerHTML = '<b>'
                    + file + '</b> KB'; 
                } 
            } 
        } 
    } */
$(document)
		.ready(
				function() {
					$.validator
							.addMethod(
									"gst",
									function(value3, element3) {
										var gst_value = value3.toUpperCase();
										var reg = /^([0-9]{2}[a-zA-Z]{4}([a-zA-Z]{1}|[0-9]{1})[0-9]{4}[a-zA-Z]{1}([a-zA-Z]|[0-9]){3}){0,15}$/;
										if (this.optional(element3)) {
											return true;
										}
										if (gst_value.match(reg)) {
											return true;
										} else {
											return false;
										}

									}, "Please specify a valid GSTTIN Number");

					$('#myform').validate({ // initialize the plugin
						rules : {
							gst : {
								required : true,
								gst : true
							}

						},
						submitHandler : function(form) {
							alert('valid form submitted');
							return false;
						}
					});
				});
/*
 * function myFunctionSearch() { var input, filter, table, tr, td, i, txtValue;
 * input = document.getElementById("myInput"); filter =
 * input.value.toUpperCase(); table = document.getElementById("myTable"); tr =
 * table.getElementsByTagName("tr"); for (i = 0; i < tr.length; i++) { td =
 * tr[i].getElementsByTagName("td")[0]; if (td) { txtValue = td.textContent ||
 * td.innerText; if (txtValue.toUpperCase().indexOf(filter) > -1) {
 * tr[i].style.display = ""; } else { tr[i].style.display = "none"; } } } }
 */
var _validFileExtensions = [ ".jpg", ".jpeg", ".bmp", ".gif", ".png" ];
function Validate(oForm) {
	var arrInputs = oForm.getElementsByTagName("input");
	for (var i = 0; i < arrInputs.length; i++) {
		var oInput = arrInputs[i];
		if (oInput.type == "file") {
			var sFileName = oInput.value;
			if (sFileName.length > 0) {
				var blnValid = false;
				for (var j = 0; j < _validFileExtensions.length; j++) {
					var sCurExtension = _validFileExtensions[j];
					if (sFileName.substr(
							sFileName.length - sCurExtension.length,
							sCurExtension.length).toLowerCase() == sCurExtension
							.toLowerCase()) {
						blnValid = true;
						break;
					}
				}

				if (!blnValid) {
					alert("Sorry, " + sFileName
							+ " is invalid, allowed extensions are: "
							+ _validFileExtensions.join(", "));
					return false;
				}
			}
		}
	}

	return true;
}
var form = document.getElementById('f');

function myFunctionpopup() {
	if (form.checkValidity()) {
		alert("Operation Succesfull!");
	}
}

$(document).ready(function() {
	$("#myInput").on("keyup", function() {
		var value = $(this).val().toLowerCase();
		$("#myTable tr").filter(function() {
			$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
		});
	});
});
