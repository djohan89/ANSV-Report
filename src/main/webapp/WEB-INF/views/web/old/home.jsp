<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Trang chủ</title>

<body>

<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.8.0/jszip.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.8.0/xlsx.js"></script>

<script>
    $(document).ready(function() {
        $('#btn_reset').attr('disabled',true);

        var ExcelToJSON = function() {
 
            this.parseExcel = function(file) {
                var reader = new FileReader();
     
                reader.onload = function(e) {
                    var data = e.target.result;
                    var workbook = XLSX.read(data, {
                        type: 'binary'
                    });
                    workbook.SheetNames.forEach(function(sheetName) {
                        // Here is your object
                        var XL_row_object = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[sheetName]);
                        //console.log(XL_row_object);
                        var json_object = JSON.stringify(XL_row_object);

                        // Hiển thị giá trị JSON ra màn hình debug 
                        console.log(JSON.parse(json_object));

                        jQuery( '#xlx_json' ).val( json_object );

                        reload_table(XL_row_object);
                    })
                };
     
                reader.onerror = function(ex) {
                    console.log(ex);
                };
     
                reader.readAsBinaryString(file);
            };
        };

        function handleFileSelect(evt) {
    
            var files = evt.target.files; // FileList object
            var xl2json = new ExcelToJSON();
            xl2json.parseExcel(files[0]);
        }

        document.getElementById('upload').addEventListener('change', handleFileSelect, false);

        function reload_table(XL_row_object) {
            console.log(XL_row_object);
            json = XL_row_object;

            $('#upload').attr('disabled',true);
            $('#btn_reset').attr('disabled',false);

            var groupColumn = 1;
            var example_1 = $('#example_1').DataTable({
                data: XL_row_object,
                columns: [
                    { 	
                    	data: 'Dự án/Gói thầu',
                    	render : function(data, type,row) {
							return 	'<a href="https://www.google.com/" target="_blank" style="color: white; font-weight: bold;" data-toggle="tooltip" data-html="true" title="'+row["Tình trạng"]+'">'
							+ data
							+ '</a>'
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
                                '<tr class="group"><td colspan="3" style="background-color: black; color: white;">'+group+'</td></tr>'
                            );
         
                            last = group;
                        }
                    } );
                }
            });
        }
        
        $('div.dataTables_wrapper').addClass("change_font_size");
    });

    function updateDiv() { 
        $("#abc").load(window.location.href + " #abc" );

        $('#btn_reset').attr('disabled',true);
        $('#upload').attr('disabled',false);
        document.getElementById("xlx_json").value = '';
    }
    
	function get_json_file() {
		$.getJSON('<c:url value="/assets/user/upload/data.json" />', function(json) {
		    console.log(json); // this will show the info it in firebug console
		});
	}
	
	var title = document.getElementById('title').textContent;
    console.log(title);
    var data_ul = document.getElementById("data_ul");
    var detail_data = document.getElementById("detail");
    fetch('json.json')
        .then(res => res.json())
        .then(data => {
            data.forEach((item, idx) => {
                if (item["Khách hàng"] == title) {
                    idx++;
                    let row1 = `
                    <li class="nav-item">
                        <a class="nav-link" href="#${idx}" onclick="return class_fade(${idx})">${item["Dự án/Gói thầu"]}</a>
                    </li>
                    `;

                    data_ul.innerHTML += row1;

                    let row2 = "";
                    if (idx == 1) {
                        row2 += `
                        <div id="${idx}" class="container tab-pane active" name="abc"><br>
                            <div>
                                <p>Người phụ trách: Hoàng Anh- ${idx}</p>
                                <p>Tên dự án: ${item["Dự án/Gói thầu"]}</p>
                                <p>Phạm vi cung cấp: ${item["Phạm vi cung cấp"]}</p>
                                <p>Tổng giá trị: ${item["Tổng giá trị"]}đ</p>
                                <p>Mức độ ưu tiên: ${item.Priority}</p>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-bordered table-dark">
                                    <thead>
                                        <tr>
                                            <th colspan="3">Kế hoạch nghiệm thu</th>
                                            <th colspan="2">Thanh toán tạm ứng</th>
                                            <th colspan="2">Thanh toán DAC</th>
                                            <th colspan="2">Thanh toán PAC</th>
                                            <th colspan="2">Thanh toán FAC</th>
                                        </tr>
                                        <tr>
                                            <th>DAC</th>
                                            <th>PAC</th>
                                            <th>FAC</th>
                                            <th>Số tiền</th>
                                            <th>Kế hoạch</th>
                                            <th>Số tiền</th>
                                            <th>Kế hoạch</th>
                                            <th>Số tiền</th>
                                            <th>Kế hoạch</th>
                                            <th>Số tiền</th>
                                            <th>Kế hoạch</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <td>${item.DAC}</td>
                                        <td>${item.PAC}</td>
                                        <td>${item.FAC}</td>
                                        <!--Kế hoạch nghiệm thu -->
                                        <td>${item["Số tiền thanh toán tạm ưng"]}</td>
                                        <td>${item["Kế hoạch tạm ứng"]}</td>
                                        <!-- Thanh toán tạm ứng -->
                                        <td>${item["Số tiền thanh toán DAC"]}</td>
                                        <td>${item["Kế hoạch Thanh toán DAC"]}</td>
                                        <!-- Thanh toán DAC -->
                                        <td>${item["Số tiền Thanh toán PAC"]}</td>
                                        <td>${item["Kế hoạch Thanh toán PAC"]}</td>
                                        <!-- Thanh toán PAC -->
                                        <td>${item["Số tiền Thanh toán FAC"]}</td>
                                        <td>${item["Kế hoạch Thanh toán FAC"]}</td>
                                        <!-- Thanh toán FAC -->
                                    </tbody>
                                </table>
                            </div>
                            <div class="d-flex">
                                <div style="width: 70%;">
                                    <p>Tình trạng:</p>
                                    <p> ${item["Tình trạng"]}</p>
                                </div>
                                <div class="pl-5">
                                    <p>Kết quả thực hiện kế hoạch:</p>
                                    <p> ${item["Kết quả thực hiện kế hoạch"]}</p>
                                </div>
                            </div>
                        </div>
                        `;

                    } else {
                        row2 += `
                        <div id="${idx}" class="container tab-pane fade" name="abc"><br>
                            <div>
                                <p>Người phụ trách: Hoàng Anh- ${idx}</p>
                                <p>Tên dự án: ${item["Dự án/Gói thầu"]}</p>
                                <p>Phạm vi cung cấp: ${item["Phạm vi cung cấp"]}</p>
                                <p>Tổng giá trị: ${item["Tổng giá trị"]}đ</p>
                                <p>Mức độ ưu tiên: ${item.Priority}</p>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-bordered table-dark">
                                    <thead>
                                        <tr>
                                            <th colspan="3">Kế hoạch nghiệm thu</th>
                                            <th colspan="2">Thanh toán tạm ứng</th>
                                            <th colspan="2">Thanh toán DAC</th>
                                            <th colspan="2">Thanh toán PAC</th>
                                            <th colspan="2">Thanh toán FAC</th>
                                        </tr>
                                        <tr>
                                            <th>DAC</th>
                                            <th>PAC</th>
                                            <th>FAC</th>
                                            <th>Số tiền</th>
                                            <th>Kế hoạch</th>
                                            <th>Số tiền</th>
                                            <th>Kế hoạch</th>
                                            <th>Số tiền</th>
                                            <th>Kế hoạch</th>
                                            <th>Số tiền</th>
                                            <th>Kế hoạch</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <td>${item.DAC}</td>
                                        <td>${item.PAC}</td>
                                        <td>${item.FAC}</td>
                                        <!--Kế hoạch nghiệm thu -->
                                        <td>${item["Số tiền thanh toán tạm ưng"]}</td>
                                        <td>${item["Kế hoạch tạm ứng"]}</td>
                                        <!-- Thanh toán tạm ứng -->
                                        <td>${item["Số tiền thanh toán DAC"]}</td>
                                        <td>${item["Kế hoạch Thanh toán DAC"]}</td>
                                        <!-- Thanh toán DAC -->
                                        <td>${item["Số tiền Thanh toán PAC"]}</td>
                                        <td>${item["Kế hoạch Thanh toán PAC"]}</td>
                                        <!-- Thanh toán PAC -->
                                        <td>${item["Số tiền Thanh toán FAC"]}đ</td>
                                        <td>${item["Kế hoạch Thanh toán FAC"]}</td>
                                        <!-- Thanh toán FAC -->
                                    </tbody>
                                </table>
                            </div>
                            <div class="d-flex">
                                <div style="width: 70%;">
                                    <p>Tình trạng:</p>
                                    <p> ${item["Tình trạng"]}</p>
                                </div>
                                <div class="pl-5">
                                    <p>Kết quả thực hiện kế hoạch:</p>
                                    <p> ${item["Kết quả thực hiện kế hoạch"]}</p>
                                </div>
                            </div>
                        </div>
                        `;

                    }
                    detail_data.innerHTML += row2;
                }

            })
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
    
    .change_font_size {
        font-size: 11px;
    }
    
    .dataTables_scrollHeadInner {
        min-width: 96%;
    }
    
    .table {
        min-width: 100%;
    }
</style>

<div class="content-wrapper">
    <!-- Main content -->
    <section class="content" style="background-image: url('assets/user/img/5.jpg'); background-position: center; min-height: 100%;">
        <div class="container-fluid">
            <div class="row">
                <section class="col-lg-4">
                    <!-- Sheet 1 card -->
                    <div class="card" style="margin-left: -2%; margin-right: -2%; background: rgba(192, 192, 192, 0.3); color: white;">
                        <div class="card-header border-0">
                            <h3 class="card-title">
                                <i class="fas fa-clipboard-list" style="padding-right: 8px;"></i><b>
								Báo cáo vướng mắc tuần 4 - tháng 4</b><br> <br>
                            </h3>
                            <div class="card-tools"></div>
                            <button onclick="get_json_file()">Find json file</button>
                        </div>

                        <table id="example_1" class="table" style="width:100%">
                            <thead>
                                <tr class="tr_border">
                                    <th>Dự án/Gói thầu</th>
                                    <th>Khách hàng</th>
                                    <th>Tình trạng</th>
                                    <th>PIC</th>
                                </tr>
                            </thead>
                            <tbody></tbody>
                        </table>
                    </div>
                </section>

                <!-- === Content: Cột 2 (sheet 2) === -->
                <section class="col-lg-4">
                    <!-- Sheet 2 card -->
                    <div class="card" style="margin-left: -2%; margin-right: -2%; background: rgba(192, 192, 192, 0.3); color: white;">
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

                        <table id="example_2" class="table bg-gradient-dark" style="color: white; width: 100%;">
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

                <!-- === Content: Cột 3 (sheet 3) === -->
                <section class="col-lg-4">
                    <!-- Sheet 3 card -->
                    <div class="card" style="margin-left: -2%; margin-right: -2%; background: rgba(192, 192, 192, 0.3); color: white;">
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
                        <table id="example_3" class="table bg-gradient-dark" style="color: white; width: 100%;">
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