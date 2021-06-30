<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="content-wrapper">
	<!-- Main content -->
	<section class="content">
		<div class="container-fluid">
			<div class="row">
				<section class="col-lg-12">
					<h1>Hello Test 22222222</h1>
					${absolutePath}
					<form action="upload_file" method="post" enctype="multipart/form-data">
						<input type="file" name="file" multiple />
						<input type="submit" />
					</form>
				</section>
			</div>
		</div>
	</section>
</div>