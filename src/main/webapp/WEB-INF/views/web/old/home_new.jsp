<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Trang chủ</title>

<body>

<script>
	//Bên trong function jQuery ready() gọi function .DataTable() để khởi tạo DataTable
	$(document).ready(function() {
		
		/* var result = new Date('1899-12-30');
			days = 44286;
			console.log(result);
		result.setDate(result.getDate() + days);
		console.log(result);
		
		console.log(result.toLocaleDateString("en-US")); */
		
		var month_now = 1;
		var date_now = new Date();
		month_now += date_now.getMonth();
		var year_now = date_now.getFullYear();
		var file_json_url = '<c:url value="/assets/user/upload/' + 'bao-cao-thang-' + month_now + '-' + year_now + '.json' + '" />';
		/* console.log(file_json_url); */
		
		$.getJSON('<c:url value="/assets/user/upload/data-new.json" />', function(json) {
		
		    /* console.log(json); */ // this will show the info it in firebug console

		    //Datatable báo cáo 1
			var groupColumn = 1;
			var example_1 = $('#example_1').DataTable({
                data: json,
                columns: [
                    { 
                    	data: 'Dự án/Gói thầu',
                    	render : function(data, type, row) {
							/* return '<a href="du_an_'+row["STT"]+'_sheet_1" target="_blank" style="color: white; font-weight: bold;"'+
								'data-toggle="tooltip" data-html="true" title="'+row["Tình trạng"]+'">'+data+'</a>' */
							
							if (row['Priority'] == "High") {
								var html = 	'<a href="bao_cao_sheet_1?id_p1='+row["STT"]+'" class="tooltip_css" target="_blank"' + 
												'style="color: white; font-weight: bold;" data-html="true" onclick="return project_link('+row["STT"]+')">' +
												data +
												'<br><span class="tooltiptext" style="background-color: rgb(230, 46, 51);">'+row["Tình trạng"]+'</span>' +
											'</a>';
							} else {
								var html = 	'<a href="bao_cao_sheet_1?id_p1='+row["STT"]+'" class="tooltip_css" target="_blank"' + 
												'style="color: white; font-weight: bold;" data-html="true" onclick="return project_link('+row["STT"]+')">' +
												data +
												'<br><span class="tooltiptext" style="background-color: #262626;">'+row["Tình trạng"]+'</span>' +
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
					if (data['Priority'] == "High") {
						$(row).addClass("highlight");
					}
				},
            });

			// Order by the grouping
			$('#example_1 tbody').on('click','tr.group',function() {
				var currentOrder = table_1.order()[0];
				if (currentOrder[0] === groupColumn && currentOrder[1] === 'asc') {
					table_1.order([ groupColumn, 'desc' ]).draw();
				} else {
					table_1.order([ groupColumn, 'asc' ]).draw();
				}
			});
			
			//Datatable báo cáo 2
			
			
			

			$('div.dataTables_wrapper').addClass("change_font_size");
		
	});
		
	function project_link(id) {
		window.open("bao_cao_sheet_1?id_p1="+id); //Link đến trang khác với tab mới
		//window.location.href = "http://www.w3schools.com"; //Link đến trang khác ở tab hiện tại
	  	//location.replace("https://www.w3schools.com"); //Link đến trang khác thay thế trang hiện tại
	}
	$.getJSON('<c:url value="/assets/user/upload/data-test-2.json" />', function(json2) {
		var groupColumn = 1;
		var example_2 = $('#example_2').DataTable({
            data: json2,
            columns: [
            	{ 
                	data: 'Dự án/Gói thầu',
                	render : function(data, type, row) {
						/* return '<a href="du_an_'+row["STT"]+'_sheet_1" target="_blank" style="color: white; font-weight: bold;"'+
							'data-toggle="tooltip" data-html="true" title="'+row["Tình trạng"]+'">'+data+'</a>' */
						return '<a href="bao_cao_sheet_2?id_p2='+row["STT"]+'" target="_blank" style="color: white; font-weight: bold;" data-toggle="tooltip"' +
									'data-html="true" title="'+row["Tình trạng dự án"]+'" onclick="return project_link_2('+row["STT"]+')">' +
									data +
								'</a>' 
					}
                },
                { data: 'Khách hàng' },
                { data: 'Mức độ khả thi' },
                { data: 'Phụ trách' } 
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
				if (data['Mức độ ưu tiên'] == "1") {
					$(row).addClass("highlight");
				}else if(data['Mức độ ưu tiên'] == "2"){
					$(row).addClass("highlight2");
				}
			},
        });

		// Order by the grouping
		$('#example_2 tbody').on('click','tr.group',function() {
			var currentOrder = table_1.order()[0];
			if (currentOrder[0] === groupColumn && currentOrder[1] === 'asc') {
				table_1.order([ groupColumn, 'desc' ]).draw();
			} else {
				table_1.order([ groupColumn, 'asc' ]).draw();
			}
		});
		$('div.dataTables_wrapper').addClass("change_font_size");
	});
	function project_link_2(id) {
		window.open("bao_cao_sheet_2?id_p2="+id); //Link đến trang khác với tab mới
		//window.location.href = "http://www.w3schools.com"; //Link đến trang khác ở tab hiện tại
	  	//location.replace("https://www.w3schools.com"); //Link đến trang khác thay thế trang hiện tại
	}
	$.getJSON('<c:url value="/assets/user/upload/data-test-3.json" />', function(json) {
		var groupColumn = 1;
		//Datatable báo cáo 3
		var example_3 = $('#example_3').DataTable({
            data: json,
            columns: [
            	{ 
                	data: 'Dự án/Gói thầu',
                	render : function(data, type, row) {
						/* return '<a href="du_an_'+row["STT"]+'_sheet_1" target="_blank" style="color: white; font-weight: bold;"'+
							'data-toggle="tooltip" data-html="true" title="'+row["Tình trạng"]+'">'+data+'</a>' */
						return '<a href="bao_cao_sheet_3?id_p3='+row["STT"]+'" target="_blank" style="color: white; font-weight: bold;" data-toggle="tooltip"' +
									'data-html="true" title="'+row["Tình trạng dự án"]+'" onclick="return project_link_3('+row["STT"]+')">' +
									data +
								'</a>' 
					}
                },
                { data: 'Khách hàng' },
                { data: 'Mức độ khả thi' },
                { data: 'Phụ trách' } 
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
				if (data['Mức độ ưu tiên'] == "1") {
					$(row).addClass("highlight");
				}else if(data['Mức độ ưu tiên'] == "2"){
					$(row).addClass("highlight2");
				}
			},
        });

		// Order by the grouping
		$('#example_3 tbody').on('click','tr.group',function() {
			var currentOrder = table_1.order()[0];
			if (currentOrder[0] === groupColumn && currentOrder[1] === 'asc') {
				table_1.order([ groupColumn, 'desc' ]).draw();
			} else {
				table_1.order([ groupColumn, 'asc' ]).draw();
			}
		});
		$('div.dataTables_wrapper').addClass("change_font_size");
	});
	function project_link_3(id) {
		window.open("bao_cao_sheet_3?id_p3="+id); //Link đến trang khác với tab mới
		//window.location.href = "http://www.w3schools.com"; //Link đến trang khác ở tab hiện tại
	  	//location.replace("https://www.w3schools.com"); //Link đến trang khác thay thế trang hiện tại
	}
	
});
</script>

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
									<i class="fas fa-clipboard-list" style="padding-right: 8px;"></i><b>
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
									<i class="fas fa-clipboard-list" style="padding-right: 8px;"></i><b>
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
										<th><b>Mức độ khả thi</b></th>
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
									<i class="fas fa-clipboard-list" style="padding-right: 8px;"></i><b>
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
										<th><b>Tình trạng</b></th>
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