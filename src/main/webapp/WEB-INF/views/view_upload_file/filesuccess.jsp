<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>File uploaded result...</title>

<body>

<script>
	//Bên trong function jQuery ready() gọi function .DataTable() để khởi tạo DataTable
	$(document).ready(function() {
		var ten_file_upload = "${filename}";
		console.log("File upload thành công: " + ten_file_upload);
		
		//Kiểm tra tên file theo tên quỷ chuẩn định sẵn. Nhằm đưa đúng thông tin (file) vào đúng phần hiển thị
	  	var compare_file_name_upload_1 = file_upload_accept_1.localeCompare(ten_file_upload);
	  	var compare_file_name_upload_2 = file_upload_accept_2.localeCompare(ten_file_upload);
	  	var compare_file_name_upload_3 = file_upload_accept_3.localeCompare(ten_file_upload);
		
	  	document.getElementById("name_upload_1").innerHTML = file_view_1.replaceAll(".xlsx","");
	  	document.getElementById("name_upload_2").innerHTML = file_view_2.replaceAll(".xlsx","");
	  	document.getElementById("name_upload_3").innerHTML = file_view_3.replaceAll(".xlsx","");
	  	
		$(function () {
		  	$('[data-toggle="tooltip"]').tooltip()
		})
		
/* Đầu: Phần lấy ra file excel. Sau đó convert thành json rồi đổ ra datatable */
		/* set up XMLHttpRequest */
		var url = '<c:url value="/assets/user/upload/${filename}" />';
		var oReq = new XMLHttpRequest();

		oReq.open("GET", url, true);
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
		  	/* DO SOMETHING WITH workbook HERE */

		  	workbook.SheetNames.forEach(function(sheetName) {
		    	// Here is your object
		    	var XL_row_object = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[sheetName]);
				/* console.log(XL_row_object); */
		    	var json_object = JSON.stringify(XL_row_object);
		    	/* console.log(JSON.parse(json_object)); */

		    	jQuery( '#xlx_json' ).val( json_object );

		    	
		    	
		    	//Kiểm tra tên file để in dữ liệu ra datatable tương ứng
		    	var groupColumn = 1;
		    	/* if (compare_file_name_upload_1 == 0) { */
		    	if (ten_file_upload.includes(file_upload_accept_chuoi_dau_1)) {
		    		var example_1 = $('#example_1').DataTable({
			            data: XL_row_object,
			            columns: [
			                { 
			                	data: 'Dự án/Gói thầu',
			                	render : function(data, type, row) {
									/* return '<a href="javascript:void(0)" target="_blank" style="color: white; font-weight: bold;" data-toggle="tooltip"' +
												'data-html="true" title="'+row["Tình trạng"]+'" onclick="return project_link('+row["STT"]+')">' +
												data +
											'</a>' */
			                		var n = format(row['Mức độ tình trạng']);
			  	                   	 /* var check_n = ["Chậm","chậm"]; */ 
			  	                   	if (n.match(/chậm/i) != null) {
										var html = 	'<a href="bao_cao_sheet_1?id_p1='+row["TT"]+'" class="tooltip_css" target="_blank"' + 
														'style="color: white; font-weight: bold;" data-html="true" onclick="return project_link('+row["TT"]+')">' +
														data +
														'<br><span class="tooltiptext" style="background-color: rgb(230, 46, 51);">' + format(row["Tình trạng"]) + '</span>' +
													'</a>';
									} else {
										var html = 	'<a href="bao_cao_sheet_1?id_p1='+row["TT"]+'" class="tooltip_css" target="_blank"' + 
														'style="color: white; font-weight: bold;" data-html="true" onclick="return project_link('+row["TT"]+')">' +
														data +
														'<br><span class="tooltiptext" style="background-color: #262626;">' + format(row["Tình trạng & Kế hoạch chi tiết"]) + '</span>' +
													'</a>';
									}
										
									return html;
								}
			                },
			                { data: 'Khách hàng' },
			                { data: 'Mức độ tình trạng' },
			                { data: 'PIC' } 
			            ],
			            "scrollY": 500,
			            "scrollX": true,
			            "scrollCollapse": true,
			            "paging": false,
			            "columnDefs": [
			                { "visible": false, "targets": groupColumn },
			                { "targets": '_all', "defaultContent": "" }
			            ],
			            "order": [[ groupColumn, 'asc' ]],
			            "displayLength": 25,
			            "drawCallback": function ( settings ) {
			                var api = this.api();
			                var rows = api.rows( {page:'current'} ).nodes();
			                var last=null;
			     
			                api.column(groupColumn, {page:'current'} ).data().each( function ( group, i ) {
			                    if ( last !== group ) {
			                        $(rows).eq( i ).before(
			                            '<tr class="group"><td colspan="18" style="background-color: black; color: white;">'+group+'</td></tr>'
			                        );
			     
			                        last = group;
			                    }
			                } );
			            },
						"createdRow" : function(row, data, dataIndex) {
							if (format(data['Mức độ tình trạng']).match(/chậm/i) != null) {
			  	                $(row).addClass("highlight");
			  	            }else if(format(data['Mức độ tình trạng']).match(/sắp/i) != null){
			  	            	$(row).addClass("highlight2");
			  	            }else{
			  	            	$(row).addClass("highlight3");
			  	            }
						},
			        });

					// Order by the grouping
					$('#example_1 tbody').on('click','tr.group',function() {
						var currentOrder = example_1.order()[0];
						if (currentOrder[0] === groupColumn && currentOrder[1] === 'asc') {
							example_1.order([ groupColumn, 'desc' ]).draw();
						} else {
							example_1.order([ groupColumn, 'asc' ]).draw();
						}
					});
		    	/* } else if (compare_file_name_upload_2 == 0) { */
		    	} else if (ten_file_upload.includes(file_upload_accept_chuoi_dau_2)) {
		    		var example_2 = $('#example_2').DataTable({
			            data: XL_row_object,
			            columns: [
			                { 
			                	data: 'Dự án/Gói thầu',
			                	render : function(data, type, row) {
									/* return '<a href="du_an_'+row["STT"]+'_sheet_1" target="_blank" style="color: white; font-weight: bold;"'+
										'data-toggle="tooltip" data-html="true" title="'+row["Tình trạng"]+'">'+data+'</a>' */
								/* 	return '<a href="javascript:void(0)" target="_blank" style="color: white; font-weight: bold;" data-toggle="tooltip"' +
												'data-html="true" title="'+row["Tình trạng"]+'" onclick="return project_link('+row["STT"]+')">' +
												data +
											'</a>' */
			                		var n = format(row['Mức độ cảnh báo']);
			  	                   	 /* var check_n = ["Chậm","chậm"]; */ 
			  	                   	if (n.match(/high/i) != null) {
										var html = 	'<a href="bao_cao_sheet_2?id_p2='+row["STT"]+'" class="tooltip_css" target="_blank"' + 
														'style="color: white; font-weight: bold;" data-html="true" onclick="return project_link('+row["STT"]+')">' +
														data +
														'<br><span class="tooltiptext" style="background-color: rgb(230, 46, 51);">' + format(row["Tình trạng & Kế hoạch chi tiết"]) + '</span>' +
													'</a>';
									} else {
										var html = 	'<a href="bao_cao_sheet_2?id_p2='+row["STT"]+'" class="tooltip_css" target="_blank"' + 
														'style="color: white; font-weight: bold;" data-html="true" onclick="return project_link('+row["STT"]+')">' +
														data +
														'<br><span class="tooltiptext" style="background-color: #262626;">' + format(row["Tình trạng & Kế hoạch chi tiết"]) + '</span>' +
													'</a>';
									}
										
									return html;
								}
			                },
			                { data: 'Khách hàng' },
			                { data: 'Mức độ cảnh báo' },
			                { data: 'PIC' } 
			            ],
			            "scrollY": 500,
			            "scrollX": true,
			            "scrollCollapse": true,
			            "paging": false,
			            "columnDefs": [
			                { "visible": false, "targets": groupColumn },
			                { "targets": '_all', "defaultContent": "" }
			            ],
			            "order": [[ groupColumn, 'asc' ]],
			            "displayLength": 25,
			            "drawCallback": function ( settings ) {
			                var api = this.api();
			                var rows = api.rows( {page:'current'} ).nodes();
			                var last=null;
			     
			                api.column(groupColumn, {page:'current'} ).data().each( function ( group, i ) {
			                    if ( last !== group ) {
			                        $(rows).eq( i ).before(
			                            '<tr class="group"><td colspan="18" style="background-color: black; color: white;">'+group+'</td></tr>'
			                        );
			     
			                        last = group;
			                    }
			                } );
			            },
						"createdRow" : function(row, data, dataIndex) {
							if (format(data['Mức độ cảnh báo']).match(/high/i) !=null) {
			  	                $(row).addClass("highlight");
			  	            } else if (format(data['Mức độ cảnh báo']).match(/medium/i) !=null) {
			  	                $(row).addClass("highlight2");
			  	            }else{
			  	            	$(row).addClass("highlight3");
			  	            }
						},
			        });

					// Order by the grouping
					$('#example_2 tbody').on('click','tr.group',function() {
						var currentOrder = example_2.order()[0];
						if (currentOrder[0] === groupColumn && currentOrder[1] === 'asc') {
							example_2.order([ groupColumn, 'desc' ]).draw();
						} else {
							example_2.order([ groupColumn, 'asc' ]).draw();
						}
					});
		    	} else {
		    		var example_3 = $('#example_3').DataTable({
			            data: XL_row_object,
			            columns: [
			                { 
			                	data: 'Dự án/Gói thầu',
			                	render : function(data, type, row) {
									/* return '<a href="du_an_'+row["STT"]+'_sheet_1" target="_blank" style="color: white; font-weight: bold;"'+
										'data-toggle="tooltip" data-html="true" title="'+row["Tình trạng"]+'">'+data+'</a>' */
									/* return '<a href="javascript:void(0)" target="_blank" style="color: white; font-weight: bold;" data-toggle="tooltip"' +
												'data-html="true" title="'+row["Tình trạng"]+'" onclick="return project_link('+row["STT"]+')">' +
												data +
											'</a>' */
			                		var n = format(row['Mức độ cảnh báo']);
			  	                   	 /* var check_n = ["Chậm","chậm"]; */ 
			  	                   	if (n.match(/high/i) != null) {
										var html = 	'<a href="bao_cao_sheet_3?id_p3='+row["STT"]+'" class="tooltip_css" target="_blank"' + 
														'style="color: white; font-weight: bold;" data-html="true" onclick="return project_link('+row["STT"]+')">' +
														data +
														'<br><span class="tooltiptext" style="background-color: rgb(230, 46, 51);">' + format(row["Tình trạng & Kế hoạch chi tiết"]) + '</span>' +
													'</a>';
									} else {
										var html = 	'<a href="bao_cao_sheet_3?id_p3='+row["STT"]+'" class="tooltip_css" target="_blank"' + 
														'style="color: white; font-weight: bold;" data-html="true" onclick="return project_link('+row["STT"]+')">' +
														data +
														'<br><span class="tooltiptext" style="background-color: #262626;">' + format(row["Tình trạng & Kế hoạch chi tiết"]) + '</span>' +
													'</a>';
									}
										
									return html;
								}
			                },
			                { data: 'Khách hàng' },
			                { data: 'Mức độ cảnh báo' },
			                { data: 'PIC' } 
			            ],
			            "scrollY": 500,
			            "scrollX": true,
			            "scrollCollapse": true,
			            "paging": false,
			            "columnDefs": [
			                { "visible": false, "targets": groupColumn },
			                { "targets": '_all', "defaultContent": "" }
			            ],
			            "order": [[ groupColumn, 'asc' ]],
			            "displayLength": 25,
			            "drawCallback": function ( settings ) {
			                var api = this.api();
			                var rows = api.rows( {page:'current'} ).nodes();
			                var last=null;
			     
			                api.column(groupColumn, {page:'current'} ).data().each( function ( group, i ) {
			                    if ( last !== group ) {
			                        $(rows).eq( i ).before(
			                            '<tr class="group"><td colspan="18" style="background-color: black; color: white;">'+group+'</td></tr>'
			                        );
			     
			                        last = group;
			                    }
			                } );
			            },
						"createdRow" : function(row, data, dataIndex) {
							if (format(data['Mức độ cảnh báo']).match(/high/i) !=null) {
			  	                $(row).addClass("highlight");
			  	            } else if (format(data['Mức độ cảnh báo']).match(/medium/i) !=null) {
			  	                $(row).addClass("highlight2");
			  	            } else {
			  	            	$(row).addClass("highlight3");
			  	            }
						},
			        });

					// Order by the grouping
					$('#example_3 tbody').on('click','tr.group',function() {
						var currentOrder = example_3.order()[0];
						if (currentOrder[0] === groupColumn && currentOrder[1] === 'asc') {
							example_3.order([ groupColumn, 'desc' ]).draw();
						} else {
							example_3.order([ groupColumn, 'asc' ]).draw();
						}
					});
		    	}
				
				$('div.dataTables_wrapper').addClass("change_font_size");
		  	})
		}

		oReq.send();
/* Cuối: Phần lấy ra file excel. Sau đó convert thành json rồi đổ ra datatable */

	});
		
	function project_link(id) {
		window.open("bao_cao_sheet_1?id_p1="+id); //Link đến trang khác với tab mới
		//window.location.href = "http://www.w3schools.com"; //Link đến trang khác ở tab hiện tại
	  	//location.replace("https://www.w3schools.com"); //Link đến trang khác thay thế trang hiện tại
	}
</script>

<style>
	text-align {
		display: flex;
		justify-content: center;
		flex-direction: column;
		height: auto;
	}
	.group{
		font-weight: bold;
		font-size: 12px;
	}
	.highlight {
		font-weight: bold;
		/* color: #FE2E2E; */
		background-color: #FE2E2E;
	}
	.highlight2 {
		font-weight: bold;
		background-color: #ff9900;
	}
	.highlight3 {
		font-weight: bold;
		background-color: #17a2b8;
	}
	.change_font_size {
		font-size: 11px;
	}

	.dataTables_scrollHeadInner {
		min-width: 96%;
	}

	.table {
		min-width: 100%;
	}
	
	.tooltip_css {
	  	color: black;
	}
	
	.tooltip_css .tooltiptext {
	  	visibility: hidden;
	  	width: 93%;
	  	color: #fff;
	  	text-align: left;
	  	border-radius: 6px;
	  	padding: 5px 6px;
	
	  	/* Position the tooltip */
	  	position: absolute;
	  	z-index: 1;
	  	
	  	/* Xuống dòng */
	  	white-space: pre-wrap;
	  	
	  	/* Khung viền */
	  	border: 2px solid;
	  	border-color: black;
	}
	
	.tooltip_css:hover .tooltiptext {
	  	visibility: visible;
	}
</style>

	<div class="content-wrapper">
		<!-- Main content -->
		<section class="content"
			style="background-image: url('assets/user/img/5.jpg'); background-position: center; min-height: 100%;">
			<div class="container-fluid">
				<div class="row">
					<section class="col-lg-4">
						<!-- Sheet 1 card -->
						<div class="card"
							style="margin-left: -2%; margin-right: -2%; background: rgba(192, 192, 192, 0.3); color: white;">
							<div class="card-header border-0">
								<h3 class="card-title">
									<i class="fas fa-clipboard-list" style="padding-right: 8px;"></i><b id="name_upload_1">
										Báo cáo vướng mắc tuần 4 - tháng 4</b><br> <br>
								</h3>
								<div class="card-tools"></div>
							</div>

							<table id="example_1" class="table bg-gradient-dark"
								style="color: white; width: 100%;">
								<thead>
									<tr>
										<th><b>Dự án</b></th>
										<th><b>Nhóm</b></th>
										<th><b>Tình trạng</b></th>
										<th><b>Phụ trách</b></th>
									</tr>
								</thead>
							</table>
						</div>
					</section>

					<!-- === Content: Cột 2 (sheet 2) === -->
					<section class="col-lg-4">
						<!-- Sheet 2 card -->
						<div class="card"
							style="margin-left: -2%; margin-right: -2%; background: rgba(192, 192, 192, 0.3); color: white;">
							<div class="card-header border-0">
								<h3 class="card-title">
									<i class="fas fa-clipboard-list" style="padding-right: 8px;"></i><b id="name_upload_2">
										Dự án kinh doanh tuần 21.17 (AM-BDC)</b><br> <br>
								</h3>
								<!-- card tools -->
								<div class="card-tools">
									<!-- <button type="button" class="btn btn-info btn-sm"
										data-card-widget="collapse" title="Collapse">
										<i class="fas fa-minus"></i>
									</button> -->
								</div>
								<!-- /.card-tools -->
							</div>

							<table id="example_2" class="table bg-gradient-dark"
								style="color: white; width: 100%;">
								<thead>
									<tr>
										<th><b>Dự án</b></th>
										<th><b>Nhóm</b></th>
										<th><b>Mức độ cảnh báo</b></th>
										<th><b>Phụ trách</b></th>
									</tr>
								</thead>
							</table>
						</div>
						<!-- /.card -->
					</section>

					<!-- === Content: Cột 3 (sheet 3) === -->
					<section class="col-lg-4">
						<!-- Sheet 3 card -->
						<div class="card"
							style="margin-left: -2%; margin-right: -2%; background: rgba(192, 192, 192, 0.3); color: white;">
							<div class="card-header border-0">
								<h3 class="card-title">
									<i class="fas fa-clipboard-list" style="padding-right: 8px;"></i><b id="name_upload_3">
										Dự án kinh doanh tuần 21.17<br>(A.Khanh + A.Tú + A.Đoàn
										Tuấn)
									</b>
								</h3>
								<!-- card tools -->
								<div class="card-tools">
									<!-- <button type="button" class="btn btn-success btn-sm"
										data-card-widget="collapse" title="Collapse">
										<i class="fas fa-minus"></i>
									</button> -->
								</div>
								<!-- /.card-tools -->
							</div>
							<table id="example_3" class="table bg-gradient-dark"
								style="color: white; width: 100%;">
								<thead>
									<tr>
										<th><b>Dự án</b></th>
										<th><b>Nhóm</b></th>
										<th><b>Mức độ cảnh báo</b></th>
										<th><b>Phụ trách</b></th>
									</tr>
								</thead>
							</table>
						</div>
						<!-- /.card -->
					</section>



				</div>
				<!-- /.row (main row) -->
			</div>
			<!-- /.container-fluid -->
		</section>
		<!-- /.content -->
	</div>
</body>