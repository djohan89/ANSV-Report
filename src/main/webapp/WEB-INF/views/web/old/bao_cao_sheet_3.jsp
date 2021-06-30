<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Trang chủ</title>

<script type="text/javascript">
	$( document ).ready(function() {
		let params = (new URL(document.location)).searchParams;
		let id = parseInt(params.get("id_p3"));
		return_id(id);
		
	});
</script>

<div class="content-wrapper bg-dark">
	<!-- Content Header (Page header) -->
	<div class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class=" text-center col-md-12">				
					<h3 id="title" class="m-0">
					
					</h3>
				</div>
				<!-- /.col -->
				<div class="col-sm-6"></div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container-fluid -->
	</div>
	<!-- /.content-header -->

	<!-- Main content -->
	<section class="content">
		<div class="container-fluid" id="detail_data">

<script>
	function return_id(id) {
		var title = document.getElementById('title');
	       var detail_data = document.getElementById("detail_data");
	      
	       $.getJSON('<c:url value="/assets/user/upload/data-test-3.json"/>', function(json) {
	           // console.log(json);
	           
	           json.forEach(item => {
	               if (item["STT"] == id) {
	            	   let row =  item["Dự án/Gói thầu"];
	            	   title.innerHTML += row;
	                   let row1 ='<div class="row">'
	                   				+'<div class="col-md-6">'
		                           +'<div class="table-responsive-sm">'
			                           +'<table class="table table-hover table-bordered table-dark">'
				                           +'<tr>'
				                               +'<th>Dự án/Gói thầu</th>'
				                               +'<td>'+format(item["Dự án/Gói thầu"])+'</td>'
				                           +'</tr>'
				                           +'<tr>'
				                               +'<th>Mô tả dự án</th>'
				                               +'<td>'+format(item["Mô tả dự án"])+'</td>'
				                           +'</tr>'
				                           +'<tr>'
				                               +'<th>Tổng mức đầu tư </th>'
				                               +'<td>'+format(item["Tổng mức đầu tư"])+'</td>'
				                           +'</tr>'
				                           +'<tr>'
				                               +'<th>Hình thức đầu tư</th>'
				                               +'<td>'+format(item["Hình thức đầu tư"])+'</td>'
				                           +'</tr>'
				                           +'<tr>'
				                               +'<th>Mức độ khả thi</th>'
				                               +'<td>'+format(item["Mức độ khả thi"])+'</td>'
				                           +'</tr>'
				                           +'<tr>'
				                               +'<th>Mức độ ưu tiên</th>'
				                               +'<td>'+format(item["Mức độ ưu tiên"])+'</td>'
				                           +'</tr>'
				                           
				                           
			                           +'</table>'
				                    +'</div>'
			                   	+'</div>'
			                   	+'<div class="col-md-6">'
			                   		+'<div class="table-responsive-sm">'
			                   			+'<table class="table table-bordered table-hover table-dark">'
			                   			+'<tr>'
			                               +'<th>Tồn tại, vướng mắc, đề xuất giải pháp</th>'
			                               +'<td>'+format(item["Tồn tại, vướng mắc, đề xuất giải pháp"])+'</td>'
			                           +'</tr>'
			                           +'<tr>'
		                               +'<th>Tình trạng dự án</th>'
		                               		+'<td>'+format(item["Tình trạng dự án"])+'</td>'
		                           	   +'</tr>'
			                           +'<tr>'
			                               +'<th>Đăng ký kế hoạch dự án</th>'
			                               +'<td>'+format_date(item["Đăng ký kế hoạch dự án"])+'</td>'
			                           +'</tr>'
				                           +'<tr>'
				                               +'<th>Kết quả thực hiện kế hoạch</th>'
				                               +'<td>'+format(item["Kết quả thực hiện kế hoạch"])+'</td>'
				                           +'</tr>'
				                           +'<tr>'
				                               +'<th>Phụ trách</th>'
				                               +'<td>'+format(item["Phụ trách"])+'</td>'
				                           +'</tr>'
		                           		+'</table>'
				                    +'</div>'
			                   +'</div>'
			                     
	                   ;
	                   detail_data.innerHTML += row1;
	               }
	           });
	       })
	}
</script>


		</div>
		<!-- /.container-fluid -->
	</section>
	<!-- /.content -->
</div>