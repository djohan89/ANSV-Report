<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Dự án</title>

<style>
a {
	color: #fff;
}

a:hover {
	color: #fff;
	text-decoration: none;
}
.content-wrapper{
background: #000000c4;
color: #fff;}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		let params = (new URL(document.location)).searchParams;
		let id = params.get("kh_s1_id");
		return_id(id);
	});
	
</script>

<div class="content-wrapper" >
	<!-- Content Header (Page header) -->
	
	<!-- /.content-header -->

	<!-- Main content -->
	<section class="content">
		<div class="container-fluid ">
			<h2 id="title"></h2>
    <div class="container bg-dark text-white">
        <nav>
            <ul class="nav nav-tabs" id="data_ul">
            </ul>
        </nav>
        <div class="tab-content" id="detail">

        </div>
        <script>
        	function return_id(id){
        		var title = document.getElementById('title');
                var data_ul = document.getElementById("data_ul");
                var detail_data = document.getElementById("detail");
                 
                 /* var url = '<c:url value="/assets/user/upload/Cainayhayne(1).xlsx" />'; */
         		var oReq = new XMLHttpRequest();

         		oReq.open("GET", url1, true);
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
        		    	// Here is your object
        		    	var XL_row_object = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[sheetName]);
        		    	var idx = 0;
        		    	function groupArrayOfObjects(list, key) {
		                    return list.reduce(function(rv, x) {
		                        (rv[x[key]] = rv[x[key]] || []).push(x);
		                        return rv;
		                    }, {});
		                };
		                var groupedPeople = groupArrayOfObjects(XL_row_object, "Khách hàng");
		                title.innerHTML += id;
		                XL_row_object.forEach(item=>{
		                	if (item["Khách hàng"] == id) {
		                        /* console.log(item);  */
		                        idx++;
		                        let row1 = "";
		                        if (idx == 1) {
		                            row1 += '<li class="nav-item">' +
		                                '<a class="nav-link link-active active" id="a-' + idx + '" href="#' + idx + '" onclick=" return class_fade(' + idx + ')">' + item['Dự án/Gói thầu'] + '</a>' +
		                                '</li>';
		                        } else {
		                            row1 += '<li class="nav-item">' +
		                                '<a class="nav-link link-active" id="a-' + idx + '" href="#' + idx + '" onclick=" return class_fade(' + idx + ')">' + item['Dự án/Gói thầu'] + '</a>' +
		                                '</li>';
		                        }

		                        data_ul.innerHTML += row1;
		                        let row2 = "";
		                        if (idx == 1) {

		                            row2 += '<div id="' + idx + '" class="container tab-pane active" ><br>' +
		                                '<div>' +
		                                '<p><b>Người phụ trách:</b> ' + format(item["PIC"]) + '</p>' +
		                                '<p><b>Tên dự án:</b> <a href="bao_cao_sheet_1?id_p1=' + item["TT"] + '" onclick="return project_link_sheet_1(' + item["TT"] + ')"' +
		                                '> ' + format(item["Dự án/Gói thầu"]) + '</a></p>' +
		                                '<p style="white-space: pre-wrap;"><b>Phạm vi cung cấp:</b> ' + format(item["Phạm vi cung cấp"]) + '</p>' +
		                                '<p><b>Tổng giá trị:</b> ' + format(item["Tổng giá trị"]) + '</p>' +
		                                '<p><b>Mức độ ưu tiên:</b> ' + format(item["Priority"]) + '</p>'

		                            +
		                            '</div>' +
		                            '<div class="table-responsive">' +
		                            '<table class="table table-bordered table-dark">' +
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
		                            '<td>' + format_date(item["Kế hoạch GH DAC"]) + '</td>' +
		                                '<td>' + format_date(item["Kế hoạch NT PAC"]) + '</td>' +
		                                '<td>' + format_date(item["Kế hoạch NT FAC"]) + '</td>' +
		                                '<!--Kế hoạch nghiệm thu -->' +
		                                '<td>' + format(item["Số tiền tạm ứng"]) + '</td>' +
		                                '<td>' + format_date(item["Kế hoạch tạm ứng"]) + '</td>'

		                            <!-- Thanh toán tạm ứng -->
		                            +
		                            '<td>' + format(item["Số tiền DAC"]) + '</td>' +
		                                '<td>' + format_date(item["Kế hoạch TT DAC"]) + '</td>'

		                            <!-- Thanh toán DAC -->
		                            +
		                            '<td>' + format(item["Số tiền PAC"]) + '</td>' +
		                                '<td>' + format_date(item["Kế hoạch TT PAC"]) + '</td>'

		                            <!-- Thanh toán PAC -->
		                            +
		                            '<td>' + format(item["Số tiền FAC"]) + '</td>' +
		                                '<td>' + format_date(item["Kế hoạch TT FAC"]) + '</td>'

		                            <!-- Thanh toán FAC -->
		                            +
		                            '</tbody>' +
		                            '</table>' +
		                            '</div>' +
		                            '<div class="d-flex">' +
		                            '<div style="width: 70%;">' +
		                            '<p><b>Tình trạng & Kế hoạch chi tiết:</b> </p>' +
		                            '<p style="white-space: pre-wrap;"> ' + format(item["Tình trạng & Kế hoạch chi tiết"]) + '</p>' +
		                                '</div>' +
		                                '<div class="pl-5">' +
		                                '<p><b>Kết quả thực hiện kế hoạch:</b> </p>' +
		                                '<p style="white-space: pre-wrap;"> ' + format(item["Kết quả thực hiện kế hoạch"]) + '</p>' +
		                                '</div>' +
		                                '</div>' +
		                                '</div>';

			                      	} else {
			                            row2 += '<div id="' + idx + '" class="container tab-pane fade" ><br>' +
			                                '<div>' +
			                                '<p><b>Người phụ trách:</b> ' + format(item["PIC"]) + '</p>' +
			                                '<p><b>Tên dự án:</b><a href="bao_cao_sheet_1?id_p1=' + item["TT"] + '" onclick="return project_link_sheet_1(' + item["TT"] + ')"' +
			                                '> ' + format(item["Dự án/Gói thầu"]) + '</a></p>' +
			                                '<p style="white-space: pre-wrap;"><b>Phạm vi cung cấp:</b> ' + format(item["Phạm vi cung cấp"]) + '</p>' +
			                                '<p><b>Tổng giá trị:</b> ' + format(item["Tổng giá trị"]) + '</p>' +
			                                '<p><b>Mức độ ưu tiên:</b> ' + format(item["Priority"]) + '</p>'

			                            +
			                            '</div>' +
			                            '<div class="table-responsive">' +
			                            '<table class="table table-bordered table-dark">' +
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
			                            '<td>' + format_date(item["Kế hoạch GH DAC"]) + '</td>' +
			                                '<td>' + format_date(item["Kế hoạch NT PAC"]) + '</td>' +
			                                '<td>' + format_date(item["Kế hoạch NT FAC"]) + '</td>' +
			                                '<!--Kế hoạch nghiệm thu -->' +
			                                '<td>' + format(item["Số tiền tạm ứng"]) + '</td>' +
			                                '<td>' + format_date(item["Kế hoạch tạm ứng"]) + '</td>'

			                            <!-- Thanh toán tạm ứng -->
			                            +
			                            '<td>' + format(item["Số tiền DAC"]) + '</td>' +
			                                '<td>' + format_date(item["Kế hoạch TT DAC"]) + '</td>'

			                            <!-- Thanh toán DAC -->
			                            +
			                            '<td>' + format(item["Số tiền PAC"]) + '</td>' +
			                                '<td>' + format_date(item["Kế hoạch TT PAC"]) + '</td>'

			                            <!-- Thanh toán PAC -->
			                            +
			                            '<td>' + format(item["Số tiền FAC"]) + '</td>' +
			                                '<td>' + format_date(item["Kế hoạch TT FAC"]) + '</td>'

			                            <!-- Thanh toán FAC -->
			                            +
			                            '</tbody>' +
			                            '</table>' +
			                            '</div>' +
			                            '<div class="d-flex">' +
			                            '<div style="width: 70%;">' +
			                            '<p><b>Tình trạng & Kế hoạch chi tiết:</b> </p>' +
			                            '<p style="white-space: pre-wrap;"> ' + format(item["Tình trạng & Kế hoạch chi tiết"]) + '</p>' +
			                                '</div>' +
			                                '<div class="pl-5">' +
			                                '<p><b>Kết quả thực hiện kế hoạch:</b> </p>' +
			                                '<p style="white-space: pre-wrap;"> ' + format(item["Kết quả thực hiện kế hoạch"]) + '</p>' +
			                                '</div>' +
			                                '</div>' +
			                                '</div>';

			                       }
			                       detail_data.innerHTML += row2;
			                   };
			              });
        		  	});
         		}
         		oReq.send();
         		function project_link_sheet_1(id) {
         		    //window.open("bao_cao_sheet_1?id_p1=" + id); //Link đến trang khác với tab mới
         		    window.location.href = "bao_cao_sheet_1?id_p1=" + id; //Link đến trang khác ở tab hiện tại
         		    //location.replace("https://www.w3schools.com"); //Link đến trang khác thay thế trang hiện tại
         		}
                 
        	}
        	
           
        </script>
    </div>
    <script>
        function class_fade(id) {
        	let a_id = "a-"+id;
        	var a = document.getElementById(a_id);
        	var numa = document.getElementsByClassName("link-active");
        	for(j=1; j<=numa.length; j++){
        		let a_jd = "a-"+j;
        		var remove = document.getElementById(a_jd);
       			var check = remove.classList.contains("active");
       			if(check == true){
       				remove.classList.remove("active")
       			}
        	}
        	a.classList.add("active"); 
        	
        	
            var element = document.getElementById(id);
            var numItems = document.getElementsByClassName(" tab-pane ");
            for (i = 1; i <= numItems.length; i++) {
                var remove_class = document.getElementById(i);
                // console.log(remove_class);

                var check_active = remove_class.classList.contains("active");
                // console.log(check_active);
                if (check_active == true) {
                    remove_class.classList.remove("active");
                } else {
                    remove_class.classList.remove("fade");
                }
            }
            element.classList.add("active");
        };
    </script>
		</div>
		<!-- /.container-fluid -->
	</section>
	<!-- /.content -->
</div>

