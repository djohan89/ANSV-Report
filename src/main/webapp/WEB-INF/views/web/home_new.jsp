<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Trang chủ</title>



<div class="content-wrapper">
	<!-- Main content -->
	<section class="content" id="content_dashboard"
		style="background-image: url('assets/user/img/10.jpg'); background-position: center; min-height: 576px;">
		<div class="container-fluid">
			<div class="row">
				<section class="col-lg-4">
					<!-- Sheet 1 card -->
					<div class="card"
						style="margin-left: -2%; margin-right: -2%; background: rgba(192, 192, 192, 0.3); color: white;">
						<div class="card-header border-0">
							<h3 class="card-title d-flex">
								<i class="fas fa-clipboard-list" style="padding-right: 8px;"></i>
								<b id="name_sheet_1">
									Báo cáo vướng mắc tuần 4 - tháng 4
								</b><br><br>
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
						style="margin-left: -2%; margin-right: -2%; background: rgba(192, 192, 192, 0.3); color: white;">
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
						style="margin-left: -2%; margin-right: -2%; background: rgba(192, 192, 192, 0.3); color: white;">
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

	.highlight {
		font-weight: bold;
		/* color: #FE2E2E; */
		background-color: #FE2E2E;
	}
	.highlight2 {
		font-weight: bold;
		background-color: #ff9900;
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
					var html = 	'<a href="bao_cao_sheet_1?id_p1='+row["STT"]+'" class="tooltip_css" target="_blank"' + 
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
            if (format(data['Mức độ tình trạng']).match(/rất chậm/i) != null) {
                $(row).addClass("highlight");
            }else if(format(data['Mức độ tình trạng']).match(/chậm/i) != null){
            	$(row).addClass("highlight2");
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
					var html = 	'<a href="bao_cao_sheet_2?id_p2='+row["STT"]+'" class="tooltip_css" target="_blank"' + 
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
            if (format(data['Mức độ tình trạng']).match(/rất chậm/i) !=null) {
                $(row).addClass("highlight");
            } else if (format(data['Mức độ tình trạng']).match(/chậm/i) !=null) {
                $(row).addClass("highlight2");
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
					var html = 	'<a href="bao_cao_sheet_3?id_p3='+row["STT"]+'" class="tooltip_css" target="_blank"' + 
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
        	if (format(data['Mức độ tình trạng']).match(/rất chậm/i) !=null) {
                $(row).addClass("highlight");
            } else if (format(data['Mức độ tình trạng']).match(/chậm/i) !=null) {
                $(row).addClass("highlight2");
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
		window.open("bao_cao_sheet_1?id_p1="+id); //Link đến trang khác với tab mới
		//window.location.href = "http://www.w3schools.com"; //Link đến trang khác ở tab hiện tại
	  	//location.replace("https://www.w3schools.com"); //Link đến trang khác thay thế trang hiện tại
	}



	function project_link_2(id) {
		window.open("bao_cao_sheet_2?id_p2="+id); //Link đến trang khác với tab mới
		//window.location.href = "http://www.w3schools.com"; //Link đến trang khác ở tab hiện tại
	  	//location.replace("https://www.w3schools.com"); //Link đến trang khác thay thế trang hiện tại
	}



	function project_link_3(id) {
		window.open("bao_cao_sheet_3?id_p3="+id); //Link đến trang khác với tab mới
		//window.location.href = "http://www.w3schools.com"; //Link đến trang khác ở tab hiện tại
	  	//location.replace("https://www.w3schools.com"); //Link đến trang khác thay thế trang hiện tại
	}
</script>