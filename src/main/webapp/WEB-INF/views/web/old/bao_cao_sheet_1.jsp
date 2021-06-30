<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Trang chủ</title>

<script type="text/javascript">
	$( document ).ready(function() {
		let params = (new URL(document.location)).searchParams;
		let id = parseInt(params.get("id_p1"));
		return_id(id);
		
	});
</script>

<div class="content-wrapper bg-dark">
	<!-- Content Header (Page header) -->
	<div class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="text-center col-md-12"> 
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
		/* set up XMLHttpRequest */
		var url = '<c:url value="/assets/user/upload/Cainayhayne.xlsx" />';
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
				
				$('div.dataTables_wrapper').addClass("change_font_size");
		  	})
		}

		oReq.send();
	}
</script>


		</div>
		<!-- /.container-fluid -->
	</section>
	<!-- /.content -->
</div>