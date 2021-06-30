<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<title>Java Ajax Servlet File Upload</title>
<div class="content-wrapper">
	<form method="post" action="fileuploadservlet" enctype="multipart/form-data">
		<input type="file" name="file" />
		<input type="submit" value="Upload" />
	</form>
	
	<h4>This is Ajax!</h4>
	
	<!-- HTML5 Input Form Elements -->
	<input id="ajaxfile" type="file" />
	<button onclick="uploadFile()"> Upload </button>
	
	<!-- Ajax to Java File Upload Logic -->
	<script>
		async function uploadFile() {
			let formData = new FormData();
			formData.append("file", ajaxfile.files[0]);
			await fetch('fileuploadservlet', {
				method: "POST",
				body: formData
			});
			alert('The file upload with Ajax and Java was a success!');
		}
	</script>
</div>