<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page isELIgnored="false" %>>

<title>File uploaded result...</title>

<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.8.0/jszip.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.8.0/xlsx.js"></script>

<script>
	//Bên trong function jQuery ready() gọi function .DataTable() để khởi tạo DataTable
	$(document).ready(function() {
		
		
		
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
				console.log(XL_row_object);
		    	var json_object = JSON.stringify(XL_row_object);
		    	console.log(JSON.parse(json_object));

		    	jQuery( '#xlx_json' ).val( json_object );

		    	var groupColumn = 1;
				var example_1 = $('#example_1').DataTable({
		            data: XL_row_object,
		            columns: [
		                { 
		                	data: 'Dự án/Gói thầu',
		                	render : function(data, type, row) {
								/* return '<a href="du_an_'+row["STT"]+'_sheet_1" target="_blank" style="color: white; font-weight: bold;"'+
									'data-toggle="tooltip" data-html="true" title="'+row["Tình trạng"]+'">'+data+'</a>' */
								return '<a href="javascript:void(0)" target="_blank" style="color: white; font-weight: bold;" data-toggle="tooltip"' +
											'data-html="true" title="'+row["Tình trạng"]+'" onclick="return project_link('+row["STT"]+')">' +
											data +
										'</a>'
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
		  	})
		}

		oReq.send();
/* Cuối: Phần lấy ra file excel. Sau đó convert thành json rồi đổ ra datatable */
		
		
		
		$(function () {
		  	$('[data-toggle="tooltip"]').tooltip()
		})
		
		var month_now = 1;
		var date_now = new Date();
		month_now += date_now.getMonth();
		var year_now = date_now.getFullYear();
		var file_json_url = '<c:url value="/assets/user/upload/' + 'bao-cao-thang-' + month_now + '-' + year_now + '.json' + '" />';
		
		
		
		
		
		$('div.dataTables_wrapper').addClass("change_font_size");
	});
		
	function project_link(id) {
		window.open("bao_cao_sheet_1?id_p1="+id); //Link đến trang khác với tab mới
		//window.location.href = "http://www.w3schools.com"; //Link đến trang khác ở tab hiện tại
	  	//location.replace("https://www.w3schools.com"); //Link đến trang khác thay thế trang hiện tại
	}
	
	function test() {
        var Excel = new ActiveXObject("Excel.Application");
        Excel.Visible = true;
        Excel.Workbooks.Open("teste.xlsx");
   	}
</script>

<div class="content-wrapper">
	<section class="content">
		<div class="container-fluid">
			<div class="row">
				<section class="col-lg-6">
					<h1>${msg}</h1>
					<h3>${path}</h3>
					<input type=button onClick="test()" value="Open File" class="btn">
					<a onclick="window.open('ms-excel:ofe|u|<c:url value="/assets/user/upload/${filename}" />')"> Open Excel </a>
					<img alt="profile image" src="<c:url value="/assets/user/upload/${filename}" />" />
				</section>
				<section class="col-lg-6">
					<div class="card">
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
			</div>
		</div>
	</section>
</div>