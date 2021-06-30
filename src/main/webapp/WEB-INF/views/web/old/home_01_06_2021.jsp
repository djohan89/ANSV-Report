<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Trang chủ</title>

<body>

<script>
	var json = [
			{
				"name" : "HĐ 01-NET2",
				"status" : "Chậm tiến độ",
				"manager" : "Hoàng Anh"
			},
			{
				"name" : "HĐ 04-NET1",			
				"status" : "Dự kiến chậm tiến độ",
				"manager" : "Thành Nam"
			},
			{
				"name" : "GPON - DOT 1",				
				"status" : "Dự kiến chậm tiến độ",
				"manager" : "Nguyễn Ngọc Minh"
			},
			{
				"name" : "GPON - DOT 2",			
				"status" : "Chậm tiến độ",
				"manager" : "Nguyễn Ngọc Minh"
			},
			{
				"name" : "GPON - DOT 3",
				"status" : "",
				"manager" : "Farmer"
			}, {
				"name" : "HTKT Truyền dẫn 2020",
				"status" : "",
				"manager" : ""
			}, {
				"name" : "Rani",
				"status" : "42",
				"manager" : "Nurse"
			}, {
				"name" : "Johan",
				"status" : "23",
				"manager" : "Software Engineer"
			}, {
				"name" : "Shajia",
				"status" : "status",
				"manager" : "Farmer"
			} ];

	//Bên trong function jQuery ready() gọi function .DataTable() để khởi tạo DataTable
    $(document).ready(function () {
    //Datatable báo cáo 1
    	var table_1 = $('#example_1').DataTable({
            data: json,
            columns: [
                { data: 'name',
                	render: function ( data, type, row ) {
	                	if (data == "HĐ 01-NET2" || data == "GPON - DOT 2") {
	                		return '<a href="https://www.google.com/" style="color: white; font-weight: bold;">'+data+'</a>'
						} else {
							return '<a href="https://www.google.com/" style="color: black; font-weight: bold;">'+data+'</a>'
						}
	                } 
                },
                { data: 'status' },
                { data: 'manager' }
            ],
            "pageLength": 5,
            "lengthMenu": [ [5, 10, 15, 20, 1000 ], [5, 10, 15, 20, "All"] ],
            "createdRow": function( row, data, dataIndex ) {
                if ( data['name'] == "HĐ 01-NET2" || data['name'] == "GPON - DOT 2" ) {
                    $(row).addClass("highlight");

                }
            },
            /* "info": false, //Xóa đi phần "Showing 1 to 3 of 9 entries" */
            /* "oLanguage": {
                "sInfo" : "Showing _START_ to _END_ of _TOTAL_ entries",// text you want show for info section
             }, */
           	"oLanguage": {
               	"sInfo" : "<font size='-1'><b>_TOTAL_</b> bản ghi</font>",// text you want show for info section
    		},
        });
    
    	$('#example_1 tbody').on( 'click', 'tr', function () {
            $(this).toggleClass('selected');
        } );

    //Datatable báo cáo 2
    	var table_2 = $('#example_2').DataTable({
            data: json,
            columns: [
                { data: 'name',
                	render: function ( data, type, row ) {
	                	if (data == "HĐ 01-NET2" || data == "GPON - DOT 2") {
	                		return '<a href="https://www.google.com/" style="color: white; font-weight: bold;">'+data+'</a>'
						} else {
							return '<a href="https://www.google.com/" style="color: black; font-weight: bold;">'+data+'</a>'
						}
	                } 
                },
                { data: 'status' },
                { data: 'manager' }
            ],
            "pageLength": 5,
            "lengthMenu": [ [5, 10, 15, 20, 1000 ], [5, 10, 15, 20, "All"] ],
            "createdRow": function( row, data, dataIndex ) {
                if ( data['name'] == "HĐ 01-NET2" || data['name'] == "GPON - DOT 2" ) {
                    $(row).addClass("highlight");

                }
            },
           	"oLanguage": {
               	"sInfo" : "<font size='-1'><b>_TOTAL_</b> bản ghi</font>",// text you want show for info section
    		},
        });

    //Datatable báo cáo 3
    	var table_3 = $('#example_3').DataTable({
            data: json,
            columns: [
                { data: 'name',
                	render: function ( data, type, row ) {
	                	if (data == "HĐ 01-NET2" || data == "GPON - DOT 2") {
	                		return '<a href="https://www.google.com/" style="color: white; font-weight: bold;">'+data+'</a>'
						} else {
							return '<a href="https://www.google.com/" style="color: black; font-weight: bold;">'+data+'</a>'
						}
	                } 
                },
                { data: 'status' },
                { data: 'manager' }
            ],
            "pageLength": 5,
            "lengthMenu": [ [5, 10, 15, 20, 1000 ], [5, 10, 15, 20, "All"] ],
            "createdRow": function( row, data, dataIndex ) {
                if ( data['name'] == "HĐ 01-NET2" || data['name'] == "GPON - DOT 2" ) {
                    $(row).addClass("highlight");

                }
            },
           	"oLanguage": {
               	"sInfo" : "<font size='-1'><b>_TOTAL_</b> bản ghi</font>",// text you want show for info section
    		},
        });
        
        $('div.dataTables_wrapper').addClass("change_font_size");
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
		color: white;
	}
	
	.change_font_size {
		font-size: 11px;
	}
	
	/* .table_css {
		background-color: white;
		margin-left: -5.7%; 
	} */
</style>

	<div class="content-wrapper bg-dark">
		<!-- <div class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1 class="m-0">Báo cáo</h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="trang_chu">Home</a></li>
						</ol>
					</div>
				</div>
			</div>
		</div> -->

		<!-- Main content -->
		<section class="content bg-dark">
			<div class="container-fluid">
				<!-- Main row -->
				<div class="row">
					<!-- Left col -->
					<section class="col-lg-4">
						<!-- Sheet 1 card -->
						<div class="card bg-gradient-dark" style="margin-left: -2%; margin-right: -2%;">
							<div class="card-header border-0">
								<h3 class="card-title">
									<i class="fas fa-clipboard-list" style="padding-right: 8px;"></i><b> Báo cáo vướng mắc tuần 4 - tháng 4</b><br><br>
								</h3>
								<!-- card tools -->
								<div class="card-tools">
									<!-- <button type="button" class="btn btn-primary btn-sm"
										data-card-widget="collapse" title="Collapse">
										<i class="fas fa-minus"></i>
									</button> -->
								</div>
								<!-- /.card-tools -->
							</div>
							
							<table id="example_1" class="table" style="background-color: white; color: black; width: 100%;">
								<thead>
									<tr>
										<th><b>Dự án</b></th>
										<th><b>Tình trạng</b></th>	
										<th><b>Phụ trách</b></th>
									</tr>
								</thead>
							</table>
						</div>
						<!-- /.card -->
					</section>
					
					<!-- === Content: Cột 2 (sheet 2) === -->
					<section class="col-lg-4">
						<!-- Sheet 2 card -->
						<div class="card bg-gradient-dark" style="margin-left: -2%; margin-right: -2%;">
							<div class="card-header border-0">
								<h3 class="card-title">
									<i class="fas fa-clipboard-list" style="padding-right: 8px;"></i><b> Dự án kinh doanh tuần 21.17 (AM-BDC)</b><br><br>
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
							
							<table id="example_2" class="table" style="background-color: white; color: black; width: 100%;">
								<thead>
									<tr>
										<th><b>Dự án</b></th>
										<th><b>Tình trạng</b></th>	
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
						<div class="card bg-gradient-dark" style="margin-left: -2%; margin-right: -2%;">
							<div class="card-header border-0">
								<h3 class="card-title">
									<i class="fas fa-clipboard-list" style="padding-right: 8px;"></i><b> Dự án kinh doanh tuần 21.17<br>(A.Khanh + A.Tú + A.Đoàn Tuấn)</b>
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
							<table id="example_3" class="table" style="background-color: white; color: black; width: 100%;">
								<thead>
									<tr>
										<th><b>Dự án</b></th>
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