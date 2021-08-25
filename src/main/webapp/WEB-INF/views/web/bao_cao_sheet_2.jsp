<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Trang chủ</title>

<script type="text/javascript">
	$( document ).ready(function() {
		let params = (new URL(document.location)).searchParams;
		let id = parseInt(params.get("id_p2"));
		return_id(id);
		
	});
</script>

<div class="content-wrapper bg-dark">
	<!-- Content Header (Page header) -->
	<div class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class=" text-center col-md-12">
					<h3 id="title" class="m-0"></h3>
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
		var oReq = new XMLHttpRequest();
		oReq.open("GET", url2, true);
		oReq.responseType = "arraybuffer";
		oReq.onload = function(e) {
			var arraybuffer = oReq.response;

		  	/* convert data to binary string */
		  	var data = new Uint8Array(arraybuffer);
		  	var arr = new Array();
		  	for(var i = 0; i != data.length; ++i) arr[i] = String.fromCharCode(data[i]);
		  	var bstr = arr.join("");

		  	/* Call XLSX */
		  	var workbook = XLSX.read(bstr, {type:"binary"});
		  	workbook.SheetNames.forEach(function(sheetName) {
		  		var XL_row_object = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[sheetName]);
		  		console.log(XL_row_object);
		  		XL_row_object.forEach(item=>{
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
					                               +'<td style="white-space: pre-wrap;">'+format(item["Mô tả dự án"])+'</td>'
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
				                               +'<th>Tình trạng & Kế hoạch chi tiết</th>'
				                               +'<td style="white-space: pre-wrap;">'+format(item["Tình trạng & Kế hoạch chi tiết"])+'</td>'
				                           +'</tr>'
				                           +'<tr>'
			                               +'<th>Phân tích SWOT</th>'
			                               	   +'<td style="white-space: pre-wrap;">'+format(item["Phân tích SWOT"])+'</td>'
			                           	   +'</tr>'
				                           +'<tr>'
				                               +'<th>Kết quả thực hiện kế hoạch</th>'
				                               +'<td style="white-space: pre-wrap;">'+format_date(item["Kết quả thực hiện kế hoạch"])+'</td>'
				                           +'</tr>'
					                           +'<tr>'
					                               +'<th>Phụ trách</th>'
					                               +'<td>'+format(item["PIC"])+'</td>'
					                           +'</tr>'
			                           		+'</table>'
					                    +'</div>'
				                   +'</div>'
				                     
		                   ;
		                   detail_data.innerHTML += row1;
			  		 };
			  	});
		  	});
		  	
	           
		}
		oReq.send();
	    
	      
	}
</script>


		</div>
		<!-- /.container-fluid -->
	</section>
	<!-- /.content -->
</div>