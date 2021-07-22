<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Trang chủ</title>

<link rel="stylesheet"
	href="<c:url value="/assets/user/vendor/dist/assets/owl.theme.default.min.css" />">
<link rel="stylesheet"
	href="<c:url value="/assets/user/vendor/dist/assets/owl.carousel.min.css" />">
<script src="<c:url value="/assets/user/vendor/dist/owl.carousel.min.js" />"></script>
<script src="<c:url value="/assets/user/vendor/dist/jquery.mousewheel.min.js" />"></script> <!-- Thư viện sử dụng con lăn chuột -->


<div class="content-wrapper">
	<!-- Main content -->
	<!-- <section class="content pt-3" id="content_dashboard"
		style="background-image: url('assets/user/img/10.jpg'); background-position: center; min-height: 576px;"> -->
	<section class="content pt-3" id="content_dashboard"
		style="background-image: url('assets/user/img/10.jpg'); background-position: center; min-height: 576px;">												
		<div class="container-fluid">
			<div class="row">
				<section class="col-lg-4">
					<!-- Sheet 1 card -->
					<div class="card"
						style="margin-left: -2%; margin-right: -2%; background: rgba(192, 192, 192, 0.3);">
						<div class="card-header border-0">
							<h3 class="card-title d-flex">
								<i class="fas fa-clipboard-list" style="padding-right: 8px;"></i>
								<b id="name_sheet_1">
									Báo cáo vướng mắc tuần 4 - tháng 4
								</b><br><br>
							</h3>
							<div class="card-tools">
								<div class="container">
									<!-- Trigger the modal with a button -->
									<button type="button" class="btn btn-danger btn-sm"
										data-toggle="modal" data-target="#myModal">
										<i class="fas fa-exclamation-triangle"></i>
									</button>

									<!-- Modal -->
									<div class="modal fade" id="myModal" role="dialog">
										<div class="modal-dialog">

											<!-- Modal content-->
											<div class="modal-content" style="color: black;">
												<div class="modal-header" style="border-bottom: none">
												<!-- <h5 class="modal-title" id="modal_title">Các dự án chậm tiến độ</h5> -->
													<button type="button" class="close" data-dismiss="modal">&times;</button>
												</div>
												<div class="modal-body" style="font-size: 15px; color: black">
													<div class="owl-carousel owl-theme" id="detail_slide">

														<!-- ===== Phần chèn thêm HTML ===== -->

													</div>
												</div>
												<div class="modal-footer" style="border-top: none">
													<button type="button" class="btn btn-secondary"
														data-dismiss="modal">Close</button>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default"
													data-dismiss="modal">Close</button>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>

						<table id="example_1" class="table bg-gradient-dark"
							style="color: white; width: 100%;">
							<thead>
								<tr>
									<th><b>Dự án</b></th>
									<th><b>Nhóm</b></th>
									<th><b>Tình trạng</b></th>
									<th style="width: 22%;"><b>PIC</b></th>
								</tr>
							</thead>
						</table>
					</div>
				</section>

				<!-- === Content: Cột 2 (sheet 2) === -->
				<section class="col-lg-4">
					<!-- Sheet 2 card -->
					<div class="card"
						style="margin-left: -2%; margin-right: -2%; background: rgba(192, 192, 192, 0.3);">
						<div class="card-header border-0">
							<h3 class="card-title d-flex">
								<i class="fas fa-clipboard-list" style="padding-right: 8px;"></i>
								<b id="name_sheet_2">
									Dự án kinh doanh tuần 21.17 (AM-BDC)
								</b><br>
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
									<th style="width: 22%;"><b>Khả thi</b></th>
									<th><b>PIC</b></th>
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
						style="margin-left: -2%; margin-right: -2%; background: rgba(192, 192, 192, 0.3);">
						<div class="card-header border-0">
							<h3 class="card-title d-flex">
								<i class="fas fa-clipboard-list" style="padding-right: 8px;"></i>
								<b id="name_sheet_3">
									Dự án kinh doanh tuần 21.17<br>(A.Khanh + A.Tú + A.Đoàn Tuấn)
								</b><br>
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
									<th style="width: 22%;"><b>Khả thi</b></th>
									<th><b>PIC</b></th>
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
	
	.modal-body a:hover{
		text-decoration: none;
	}

	body .modal-content {
		width: 245%;
		position: absolute;
		left: -67%;
		top: -40%; 
	}
</style>



<script>
	var data_view = ""; //Tạo biến data giả trước khi có data mới để truyền vào datatable
	var groupColumn = 1; //Cột nhóm dữ liệu (cột số 2)


	/* ===== Đầu: Datatable 1 - Báo cáo 1 ===== */
	var example_1 = $('#example_1').DataTable({
        data: data_view,
        columns: [{
            data: 'Dự án/Gói thầu',
            render: function(data, type, row) {
                var n = format(row['Mức độ tình trạng']);
               	 /* var check_n = ["Chậm","chậm"]; */ 
               	if (n.match(/chậm/i) != null) {
					var html = 	'<a href="bao_cao_sheet_1?id_p1='+row["STT"]+'" class="tooltip_css"' + 
								'style="color: white; font-weight: bold;" data-html="true" onclick="return project_link_1('+row["STT"]+')">' +
								data +
								'<br><span class="tooltiptext" style="background-color: rgb(230, 46, 51);">' + format(row["Tình trạng"]) + '</span>' +
							'</a>';
				} else {
					var html = 	'<a href="bao_cao_sheet_1?id_p1='+row["STT"]+'" class="tooltip_css" target="_blank"' + 
									'style="color: white; font-weight: bold;" data-html="true" onclick="return project_link_1('+row["STT"]+')">' +
									data +
									'<br><span class="tooltiptext" style="background-color: #262626;">' + format(row["Tình trạng"]) + '</span>' +
								'</a>';
				}
					
				return html;
                }
            },
            { data: 'Khách hàng' },
            { data: 'Mức độ tình trạng' },
            { data: 'PIC' }
        ],
        "scrollY": 530,
        "scrollX": true,
        "scrollCollapse": true,
        "paging": false,
        "columnDefs": [
            { "visible": false, "targets": groupColumn },
            { "targets": '_all', "defaultContent": "" }
        ],
        "order": [
            [groupColumn, 'asc']
        ],
        "displayLength": 25,
        "drawCallback": function(settings) {
            var api = this.api();
            var rows = api.rows({ page: 'current' }).nodes();
            var last = null;

            api.column(groupColumn, { page: 'current' }).data().each(function(group, i) {
                if (last !== group) {
                    $(rows).eq(i).before(
                        '<tr class="group"><td colspan="18" style="background-color: black; color: white;">' + group + '</td></tr>'
                    );

                    last = group;
                }
            });
        },
        "createdRow": function(row, data, dataIndex) {
            if (format(data['Mức độ tình trạng']).match(/chậm/i) != null) {
                $(row).addClass("highlight");
            }else if(format(data['Mức độ tình trạng']).match(/sắp/i) != null){
            	$(row).addClass("highlight2");
            }else {
            	$(row).addClass("highlight3");
            }
        },
    });

    // Order by the grouping
    $('#example_1 tbody').on('click', 'tr.group', function() {
        var currentOrder = example_1.order()[0];
        if (currentOrder[0] === groupColumn && currentOrder[1] === 'asc') {
            example_1.order([groupColumn, 'desc']).draw();
        } else {
            example_1.order([groupColumn, 'asc']).draw();
        }
    });
    /* ===== Cuối: Datatable 1 - Báo cáo 1 ===== */



    /* ===== Đầu: Datatable 2 - Báo cáo 2 ===== */
    var example_2 = $('#example_2').DataTable({
        data: data_view,
        columns: [{
           	data: 'Dự án/Gói thầu',
            render: function(data, type, row) {
            	var n = format(row['Mức độ tình trạng']);
               	 /* var check_n = ["Chậm","chậm"]; */ 
               	if (n.match(/chậm/i) != null) {
					var html = 	'<a href="bao_cao_sheet_2?id_p2='+row["STT"]+'" class="tooltip_css"' + 
								'style="color: white; font-weight: bold;" data-html="true" onclick="return project_link('+row["STT"]+')">' +
								data +
								'<br><span class="tooltiptext" style="background-color: rgb(230, 46, 51);">' + format(row["Tồn tại, vướng mắc, đề xuất giải pháp"]) + '</span>' +
							'</a>';
				} else {
					var html = 	'<a href="bao_cao_sheet_2?id_p2='+row["STT"]+'" class="tooltip_css" target="_blank"' + 
									'style="color: white; font-weight: bold;" data-html="true" onclick="return project_link('+row["STT"]+')">' +
									data +
									'<br><span class="tooltiptext" style="background-color: #262626;">' + format(row["Tồn tại, vướng mắc, đề xuất giải pháp"]) + '</span>' +
								'</a>';
				}
					
				return html;
                }
            },
            { data: 'Khách hàng' },
            { data: 'Mức độ khả thi' },
            { data: 'Phụ trách' }
        ],
        "scrollY": 530,
        "scrollX": true,
        "scrollCollapse": true,
        "paging": false,
        "columnDefs": [
            { "visible": false, "targets": groupColumn },
            { "targets": '_all', "defaultContent": "" }
        ],
        "order": [
            [groupColumn, 'asc']
        ],
        "displayLength": 25,
        "drawCallback": function(settings) {
            var api = this.api();
            var rows = api.rows({ page: 'current' }).nodes();
            var last = null;

            api.column(groupColumn, { page: 'current' }).data().each(function(group, i) {
                if (last !== group) {
                    $(rows).eq(i).before(
                        '<tr class="group"><td colspan="18" style="background-color: black; color: white;">' + group + '</td></tr>'
                    );

                    last = group;
                }
            });
        },
        "createdRow": function(row, data, dataIndex) {
            if (format(data['Mức độ tình trạng']).match(/chậm/i) !=null) {
                $(row).addClass("highlight");
            } else if (format(data['Mức độ tình trạng']).match(/sắp/i) !=null) {
                $(row).addClass("highlight2");
            }else{
            	$(row).addClass("highlight3");
            }
        },
    });

    // Order by the grouping
    $('#example_2 tbody').on('click', 'tr.group', function() {
        var currentOrder = example_2.order()[0];
        if (currentOrder[0] === groupColumn && currentOrder[1] === 'asc') {
            example_2.order([groupColumn, 'desc']).draw();
        } else {
            example_2.order([groupColumn, 'asc']).draw();
        }
    });
    /* ===== Cuối: Datatable 2 - Báo cáo 2 ===== */



    /* ===== Đầu: Datatable 3 - Báo cáo 3 ===== */
    var example_3 = $('#example_3').DataTable({
        data: data_view,
        columns: [{
            data: 'Dự án/Gói thầu',
            render: function(data, type, row) {
            	var n = format(row['Mức độ tình trạng']); 
               	if (n.match(/chậm/i) != null) {
					var html = 	'<a href="bao_cao_sheet_3?id_p3='+row["STT"]+'" class="tooltip_css"' + 
								'style="color: white; font-weight: bold;" data-html="true" onclick="return project_link('+row["STT"]+')">' +
								data +
								'<br><span class="tooltiptext" style="background-color: rgb(230, 46, 51);">' + format(row["Tồn tại, vướng mắc, đề xuất giải pháp"]) + '</span>' +
							'</a>';
				} else {
					var html = 	'<a href="bao_cao_sheet_3?id_p3='+row["STT"]+'" class="tooltip_css" target="_blank"' + 
									'style="color: white; font-weight: bold;" data-html="true" onclick="return project_link('+row["STT"]+')">' +
									data +
									'<br><span class="tooltiptext" style="background-color: #262626;">' + format(row["Tồn tại, vướng mắc, đề xuất giải pháp"]) + '</span>' +
								'</a>';
				}
					
				return html;
                }
            },
            { data: 'Khách hàng' },
            { data: 'Mức độ khả thi' },
            { data: 'Phụ trách' }
        ],
        "scrollY": 530,
        "scrollX": true,
        "scrollCollapse": true,
        "paging": false,
        "columnDefs": [
            { "visible": false, "targets": groupColumn },
            { "targets": '_all', "defaultContent": "" }
        ],
        "order": [
            [groupColumn, 'asc']
        ],
        "displayLength": 25,
        "drawCallback": function(settings) {
            var api = this.api();
            var rows = api.rows({ page: 'current' }).nodes();
            var last = null;

            api.column(groupColumn, { page: 'current' }).data().each(function(group, i) {
                if (last !== group) {
                    $(rows).eq(i).before(
                        '<tr class="group"><td colspan="18" style="background-color: black; color: white;">' + group + '</td></tr>'
                    );

                    last = group;
                }
            });
        },
        "createdRow": function(row, data, dataIndex) {
        	if (format(data['Mức độ tình trạng']).match(/chậm/i) !=null) {
                $(row).addClass("highlight");
            } else if (format(data['Mức độ tình trạng']).match(/sắp/i) !=null) {
                $(row).addClass("highlight2");
            }else {
            	$(row).addClass("highlight3");
            }
        },
    });

    // Order by the grouping
    $('#example_3 tbody').on('click', 'tr.group', function() {
        var currentOrder = example_3.order()[0];
        if (currentOrder[0] === groupColumn && currentOrder[1] === 'asc') {
            example_3.order([groupColumn, 'desc']).draw();
        } else {
            example_3.order([groupColumn, 'asc']).draw();
        }
    });
    /* ===== Cuối: Datatable 3 - Báo cáo 3 ===== */



    //Chèn thêm class cho datatable
    $('div.dataTables_wrapper').addClass("change_font_size");



	// Hiển thị tiêu đề cho datatable 1
	var str_1 = file_view_1; 
	var sheet_1_fix_1 = str_1.replaceAll("_", " ");
	var sheet_1_fix_2 = sheet_1_fix_1.replaceAll("tuần", "<br>Tuần");
	var sheet_1_fix_3 = sheet_1_fix_2.replaceAll(".xlsx", "");
	document.getElementById("name_sheet_1").innerHTML = sheet_1_fix_3;
	
	// Hiển thị tiêu đề cho datatable 2
	var str_2 = file_view_2; 
	var sheet_2_fix_1 = str_2.replaceAll("_", " ");
	var sheet_2_fix_2 = sheet_2_fix_1.replaceAll("tuần", "<br>Tuần");
	var sheet_2_fix_3 = sheet_2_fix_2.replaceAll(".xlsx", "");
	document.getElementById("name_sheet_2").innerHTML = sheet_2_fix_3;
	
	// Hiển thị tiêu đề cho datatable 3
	var str_3 = file_view_3; 
	var sheet_3_fix_1 = str_3.replaceAll("_", " ");
	var sheet_3_fix_2 = sheet_3_fix_1.replaceAll("tuần", "<br>Tuần");
	var sheet_3_fix_3 = sheet_3_fix_2.replaceAll(".xlsx", "");
	document.getElementById("name_sheet_3").innerHTML = sheet_3_fix_3;
	
	console.log("home_new.jsp: ");
	console.log(url1);
	console.log(url2);
	console.log(url3);
	


	/*===== Đầu: 
		Function đọc file excel, có thể gọi nhiều lần để thay thế dữ liệu truyền vào datatable =====*/
	function show_data(url1, url2, url3, week_selected) {
		console.log(url1, url2, url3);
		/*===== Đầu: Tìm kiếm dữ liệu cho datatable 1 (báo cáo 1) =====*/
		var oReqs1 = new XMLHttpRequest();
		oReqs1.open("GET", url1, true);
		oReqs1.responseType = "arraybuffer";
		oReqs1.onload = function(e) {
			var arraybuffer = oReqs1.response;

		  	/* convert data to binary string */
		  	var data = new Uint8Array(arraybuffer);
		  	var arr = new Array();
		  	for(var i = 0; i != data.length; ++i) arr[i] = String.fromCharCode(data[i]);
		  	var bstr = arr.join("");

		  	/* Call XLSX */
		  	var workbook = XLSX.read(bstr, {type:"binary"});
		  	/* DO SOMETHING WITH workbook HERE */

		  	workbook.SheetNames.forEach(function(sheetName) {
		  		var XL_row_object_1 = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[sheetName]);

		  		// Thay thế dữ liệu mới lấy được (XL_row_object) truyền vào datatable (báo cáo 1)
		    	example_1.clear().draw();
				example_1.rows.add(XL_row_object_1); // Add new data
				example_1.columns.adjust().draw(); // Redraw the DataTable
				alertify.success('Đã chuyển sang báo cáo tuần ' + week_selected + "!");
		  		
		  	});
		};
		oReqs1.send();
		/*===== Cuối: Tìm kiếm dữ liệu cho datatable 1 (báo cáo 1) =====*/
		
		
		
		/*===== Đầu: Tìm kiếm dữ liệu cho datatable 2 (báo cáo 2) =====*/
		var oReqs2 = new XMLHttpRequest();

		oReqs2.open("GET", url2, true);
		oReqs2.responseType = "arraybuffer";

		oReqs2.onload = function(e) {
			var arraybuffer = oReqs2.response;

		  	/* convert data to binary string */
		  	var data = new Uint8Array(arraybuffer);
		  	var arr = new Array();
		  	for(var i = 0; i != data.length; ++i) arr[i] = String.fromCharCode(data[i]);
		  	var bstr = arr.join("");

		  	/* Call XLSX */
		  	var workbook = XLSX.read(bstr, {type:"binary"});
		  	/* DO SOMETHING WITH workbook HERE */

		  	workbook.SheetNames.forEach(function(sheetName) {
		  		var XL_row_object_2 = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[sheetName]);
		  	    
		  		// Thay thế dữ liệu mới lấy được (XL_row_object) truyền vào datatable (báo cáo 1)
		    	example_2.clear().draw();
				example_2.rows.add(XL_row_object_2); // Add new data
				example_2.columns.adjust().draw(); // Redraw the DataTable
		  	});
		};
		oReqs2.send();
		/*===== Cuối: Tìm kiếm dữ liệu cho datatable 2 (báo cáo 2) =====*/
		

		
		/*===== Đầu: Tìm kiếm dữ liệu cho datatable 3 (báo cáo 3) =====*/
		var oReqs3 = new XMLHttpRequest();

		oReqs3.open("GET", url3, true);
		oReqs3.responseType = "arraybuffer";

		oReqs3.onload = function(e) {
			var arraybuffer = oReqs3.response;

		  	/* convert data to binary string */
		  	var data = new Uint8Array(arraybuffer);
		  	var arr = new Array();
		  	for(var i = 0; i != data.length; ++i) arr[i] = String.fromCharCode(data[i]);
		  	var bstr = arr.join("");

		  	/* Call XLSX */
		  	var workbook = XLSX.read(bstr, {type:"binary"});
		  	/* DO SOMETHING WITH workbook HERE */

		  	workbook.SheetNames.forEach(function(sheetName) {
		  		var XL_row_object_3 = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[sheetName]);

		  	    // Thay thế dữ liệu mới lấy được (XL_row_object) truyền vào datatable (báo cáo 1)
		    	example_3.clear().draw();
				example_3.rows.add(XL_row_object_3); // Add new data
				example_3.columns.adjust().draw(); // Redraw the DataTable
		  	});
		}
		oReqs3.send();
		/*===== Cuối: Tìm kiếm dữ liệu cho datatable 3 (báo cáo 3) =====*/
	}
	/*===== Cuối: 
		Function đọc file excel, có thể gọi nhiều lần để thay thế dữ liệu truyền vào datatable =====*/


	//Gọi đến function truyền dữ liệu vào datatable
	show_data(url1, url2, url3, result);



	function project_link_1(id) {
		//window.open("bao_cao_sheet_1?id_p1="+id); //Link đến trang khác với tab mới
		window.location.href = "bao_cao_sheet_1?id_p1="+id; //Link đến trang khác ở tab hiện tại
	  	//location.replace("https://www.w3schools.com"); //Link đến trang khác thay thế trang hiện tại
	}



	function project_link_2(id) {
		//window.open("bao_cao_sheet_2?id_p2="+id); //Link đến trang khác với tab mới
		window.location.href = "bao_cao_sheet_2?id_p2="+id; //Link đến trang khác ở tab hiện tại
	  	//location.replace("https://www.w3schools.com"); //Link đến trang khác thay thế trang hiện tại
	}



	function project_link_3(id) {
		//window.open("bao_cao_sheet_3?id_p3="+id); //Link đến trang khác với tab mới
		window.location.href = "bao_cao_sheet_3?id_p3="+id; //Link đến trang khác ở tab hiện tại
	  	//location.replace("https://www.w3schools.com"); //Link đến trang khác thay thế trang hiện tại
	}
</script>
<script type="text/javascript">
var detail_slide = document.getElementById("detail_slide");
var modal_title = document.getElementById("modal_title");

var oReq_slide = new XMLHttpRequest();

oReq_slide.open("GET", url1, true);
oReq_slide.responseType = "arraybuffer";

oReq_slide.onload = function(e) {
	var arraybuffer = oReq_slide.response;

		  	/* convert data to binary string */
		  	var data = new Uint8Array(arraybuffer);
		  	var arr = new Array();
		  	for(let i = 0; i != data.length; ++i) arr[i] = String.fromCharCode(data[i]);
		  	var bstr = arr.join("");

		  	/* Call XLSX */
		  	var workbook = XLSX.read(bstr, {type:"binary"});
		  	/* DO SOMETHING WITH workbook HERE */
		  	workbook.SheetNames.forEach(function(sheetName) {
		  		var XL_row_object = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[sheetName]);
		  		XL_row_object.forEach(item=>{
		  			if(format(item["Mức độ tình trạng"]).match(/chậm/i) != null){
		  				let row1 = '<div class="container tab-pane" ><br>' +
                        '<div>' +
                        '<h5 class="pb-3"><b>Tên dự án:</b> <a href="bao_cao_sheet_1?id_p1=' + item["STT"] + '" onclick="return project_link_sheet_1(' + item["STT"] + ')"' +
                        'target="_blank"> ' + format(item["Dự án/Gói thầu"]) + '</a></h5>' +
                        '<p><b>Người phụ trách:</b> ' + format(item["PIC"]) + '</p>' +
                        '<p style="white-space: pre-wrap;"><b>Phạm vi cung cấp:</b> ' + format(item["Phạm vi cung cấp"]) + '</p>' +
                        '<p><b>Tổng giá trị:</b> ' + format(item["Tổng giá trị"]) + '</p>' +
                        '<p><b>Mức độ ưu tiên:</b> ' + format(item["Priority"]) + '</p>'

                    +
                    '</div>' +
                    '<div class="table-responsive">' +
                    '<table class="table table-bordered table-hover">' +
                    '<thead>' +
                    '<tr>' +
                    '<th colspan="3">Kế hoạch nghiệm thu</th>' +
                    '<th colspan="2">Thanh toán tạm ứng</th>' +
                    '<th colspan="2">Thanh toán DAC</th>' +
                    '<th colspan="2">Thanh toán PAC</th>' +
                    '<th colspan="2">Thanh toán FAC</th>' +
                    '</tr>' +
                    '<tr>' +
                    '<th>DAC</th>' +
                    '<th>PAC</th>' +
                    '<th>FAC</th>' +
                    '<th>Số tiền</th>' +
                    '<th>Kế hoạch</th>' +
                    '<th>Số tiền</th>' +
                    '<th>Kế hoạch</th>' +
                    '<th>Số tiền</th>' +
                    '<th>Kế hoạch</th>' +
                    '<th>Số tiền</th>' +
                    '<th>Kế hoạch</th>' +
                    '</tr>' +
                    '</thead>' +
                    '<tbody>' +
                    '<td>' + format_date(item["DAC"]) + '</td>' +
                        '<td>' + format_date(item["PAC"]) + '</td>' +
                        '<td>' + format_date(item["FAC"]) + '</td>' +
                        '<!--Kế hoạch nghiệm thu -->' +
                        '<td>' + format(item["Số tiền thanh toán tạm ứng"]) + '</td>' +
                        '<td>' + format_date(item["Kế hoạch tạm ứng"]) + '</td>'

                    <!-- Thanh toán tạm ứng -->
                    +
                    '<td>' + format(item["Số tiền thanh toán DAC"]) + '</td>' +
                        '<td>' + format_date(item["Kế hoạch Thanh toán DAC"]) + '</td>'

                    <!-- Thanh toán DAC -->
                    +
                    '<td>' + format(item["Số tiền Thanh toán PAC"]) + '</td>' +
                        '<td>' + format_date(item["Kế hoạch Thanh toán PAC"]) + '</td>'

                    <!-- Thanh toán PAC -->
                    +
                    '<td>' + format(item["Số tiền Thanh toán FAC"]) + '</td>' +
                        '<td>' + format_date(item["Kế hoạch Thanh toán FAC"]) + '</td>'

                    <!-- Thanh toán FAC -->
                    +
                    '</tbody>' +
                    '</table>' +
                    '</div>' +
                    '<div class="d-flex">' +
                    '<div >' +
                    '<p><b>Tình trạng:</b> </p>' +
                    '<p style="white-space: pre-wrap;"> ' + format(item["Tình trạng"]) + '</p>' +
                        '</div>' +
                        '<div class="pl-5">' +
                        '<p><b>Kết quả thực hiện kế hoạch:</b> </p>' +
                        '<p style="white-space: pre-wrap;"> ' + format(item["Kết quả thực hiện kế hoạch"]) + '</p>' +
                        '</div>' +
                        '</div>' +
                        '</div>';
	                   detail_slide.innerHTML += row1;
	                 }
		  			
		  		});
		  	});
}
oReq_slide.send();

$(document).ready(function(){
	$('#myModal').modal('show');
    
    var owl = $('.owl-carousel');
    owl.owlCarousel({
       items: 1,
       loop: true,
       nav: true,
       margin: 10,
       autoplay: true,
       autoplayTimeout: 5000,
       responsiveClass: true,
       autoplayHoverPause: true
   });
    owl.on('mousewheel', '.owl-stage', function (e) {
        if (e.deltaY>0) {
            owl.trigger('next.owl');
        } else {
            owl.trigger('prev.owl');
        }
        e.preventDefault();
    });
});
</script>